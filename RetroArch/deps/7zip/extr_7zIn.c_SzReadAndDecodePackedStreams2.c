
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_12__ {int data; } ;
struct TYPE_11__ {int NumFolders; int PackSizes; TYPE_1__* Folders; } ;
struct TYPE_10__ {scalar_t__ UnpackCRC; scalar_t__ UnpackCRCDefined; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef int ILookInStream ;
typedef TYPE_1__ CSzFolder ;
typedef int CSzData ;
typedef TYPE_2__ CSzAr ;
typedef TYPE_3__ CBuf ;


 int Buf_Create (TYPE_3__*,size_t,int *) ;
 scalar_t__ CrcCalc (int ,size_t) ;
 int LookInStream_SeekTo (int *,scalar_t__) ;
 int RINOK (int ) ;
 int SZ_ERROR_ARCHIVE ;
 int SZ_ERROR_CRC ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 int SzFolder_Decode (TYPE_1__*,int ,int *,scalar_t__,int ,size_t,int *) ;
 scalar_t__ SzFolder_GetUnpackSize (TYPE_1__*) ;
 int SzReadStreamsInfo (int *,scalar_t__*,TYPE_2__*,int *,scalar_t__**,int **,int **,int *,int *) ;

__attribute__((used)) static SRes SzReadAndDecodePackedStreams2(
      ILookInStream *inStream,
      CSzData *sd,
      CBuf *outBuffer,
      uint64_t baseOffset,
      CSzAr *p,
      uint64_t **unpackSizes,
      uint8_t **digestsDefined,
      uint32_t **digests,
      ISzAlloc *allocTemp)
{

   uint32_t numUnpackStreams = 0;
   uint64_t dataStartPos;
   CSzFolder *folder;
   uint64_t unpackSize;
   SRes res;

   RINOK(SzReadStreamsInfo(sd, &dataStartPos, p,
            &numUnpackStreams, unpackSizes, digestsDefined, digests,
            allocTemp, allocTemp));

   dataStartPos += baseOffset;
   if (p->NumFolders != 1)
      return SZ_ERROR_ARCHIVE;

   folder = p->Folders;
   unpackSize = SzFolder_GetUnpackSize(folder);

   RINOK(LookInStream_SeekTo(inStream, dataStartPos));

   if (!Buf_Create(outBuffer, (size_t)unpackSize, allocTemp))
      return SZ_ERROR_MEM;

   res = SzFolder_Decode(folder, p->PackSizes,
         inStream, dataStartPos,
         outBuffer->data, (size_t)unpackSize, allocTemp);
   RINOK(res);
   if (folder->UnpackCRCDefined)
      if (CrcCalc(outBuffer->data, (size_t)unpackSize) != folder->UnpackCRC)
         return SZ_ERROR_CRC;
   return SZ_OK;
}
