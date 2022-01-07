
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {size_t* FolderStartPackStreamIndex; scalar_t__* PackStreamStartPositions; scalar_t__ dataPos; } ;
typedef TYPE_1__ CSzArEx ;



uint64_t SzArEx_GetFolderStreamPos(const CSzArEx *p, uint32_t folderIndex, uint32_t indexInFolder)
{
   return p->dataPos +
      p->PackStreamStartPositions[p->FolderStartPackStreamIndex[folderIndex] + indexInFolder];
}
