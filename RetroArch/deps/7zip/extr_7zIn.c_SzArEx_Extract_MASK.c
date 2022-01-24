#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
typedef  size_t uint32_t ;
struct TYPE_9__ {TYPE_3__* Files; scalar_t__ PackSizes; TYPE_2__* Folders; } ;
struct TYPE_12__ {size_t* FileIndexToFolderIndexMap; size_t* FolderStartFileIndex; TYPE_1__ db; scalar_t__* FolderStartPackStreamIndex; } ;
struct TYPE_11__ {scalar_t__ Crc; scalar_t__ CrcDefined; scalar_t__ Size; } ;
struct TYPE_10__ {scalar_t__ UnpackCRC; scalar_t__ UnpackCRCDefined; } ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  TYPE_2__ CSzFolder ;
typedef  TYPE_3__ CSzFileItem ;
typedef  TYPE_4__ CSzArEx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_CRC ; 
 scalar_t__ SZ_ERROR_FAIL ; 
 scalar_t__ SZ_ERROR_MEM ; 
 scalar_t__ SZ_OK ; 
 size_t FUNC5 (TYPE_4__ const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (TYPE_2__*) ; 

SRes FUNC8(
      const CSzArEx *p,
      ILookInStream *inStream,
      uint32_t fileIndex,
      uint32_t *blockIndex,
      uint8_t **outBuffer,
      size_t *outBufferSize,
      size_t *offset,
      size_t *outSizeProcessed,
      ISzAlloc *allocMain,
      ISzAlloc *allocTemp)
{
   uint32_t folderIndex = p->FileIndexToFolderIndexMap[fileIndex];
   SRes res = SZ_OK;
   *offset = 0;
   *outSizeProcessed = 0;
   if (folderIndex == (uint32_t)-1)
   {
      FUNC2(allocMain, *outBuffer);
      *blockIndex = folderIndex;
      *outBuffer = 0;
      *outBufferSize = 0;
      return SZ_OK;
   }

   if (*outBuffer == 0 || *blockIndex != folderIndex)
   {
      CSzFolder *folder = p->db.Folders + folderIndex;
      uint64_t unpackSizeSpec = FUNC7(folder);
      size_t unpackSize = (size_t)unpackSizeSpec;
      uint64_t startOffset = FUNC5(p, folderIndex, 0);

      if (unpackSize != unpackSizeSpec)
         return SZ_ERROR_MEM;
      *blockIndex = folderIndex;
      FUNC2(allocMain, *outBuffer);
      *outBuffer = 0;

      FUNC4(FUNC3(inStream, startOffset));

      if (res == SZ_OK)
      {
         *outBufferSize = unpackSize;
         if (unpackSize != 0)
         {
            *outBuffer = (uint8_t *)FUNC1(allocMain, unpackSize);
            if (*outBuffer == 0)
               res = SZ_ERROR_MEM;
         }
         if (res == SZ_OK)
         {
            res = FUNC6(folder,
                  p->db.PackSizes + p->FolderStartPackStreamIndex[folderIndex],
                  inStream, startOffset,
                  *outBuffer, unpackSize, allocTemp);
            if (res == SZ_OK)
            {
               if (folder->UnpackCRCDefined)
               {
                  if (FUNC0(*outBuffer, unpackSize) != folder->UnpackCRC)
                     res = SZ_ERROR_CRC;
               }
            }
         }
      }
   }
   if (res == SZ_OK)
   {
      uint32_t i;
      CSzFileItem *fileItem = p->db.Files + fileIndex;
      *offset = 0;
      for (i = p->FolderStartFileIndex[folderIndex]; i < fileIndex; i++)
         *offset += (uint32_t)p->db.Files[i].Size;
      *outSizeProcessed = (size_t)fileItem->Size;
      if (*offset + *outSizeProcessed > *outBufferSize)
         return SZ_ERROR_FAIL;
      if (fileItem->CrcDefined && FUNC0(*outBuffer + *offset, *outSizeProcessed) != fileItem->Crc)
         res = SZ_ERROR_CRC;
   }
   return res;
}