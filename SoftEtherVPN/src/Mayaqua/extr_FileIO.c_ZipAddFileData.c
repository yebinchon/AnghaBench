
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* CurrentFile; int Fifo; } ;
typedef TYPE_2__ ZIP_PACKER ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_5__ {scalar_t__ CurrentSize; scalar_t__ Size; int Crc32; } ;


 int Crc32Next (void*,scalar_t__,scalar_t__,int ) ;
 int WriteFifo (int ,int *,scalar_t__) ;
 int ZipAddFileFooter (TYPE_2__*) ;

UINT ZipAddFileData(ZIP_PACKER *p, void *data, UINT pos, UINT len)
{
 UINT ret;
 UINT total_size;

 if (p == ((void*)0))
 {
  return 0;
 }

 total_size = p->CurrentFile->CurrentSize + len;

 if (total_size > p->CurrentFile->Size)
 {
  return 0;
 }

 WriteFifo(p->Fifo, ((UCHAR *)data) + pos, len);

 p->CurrentFile->CurrentSize += len;
 p->CurrentFile->Crc32 = Crc32Next(data, pos, len, p->CurrentFile->Crc32);

 ret = p->CurrentFile->Size - p->CurrentFile->CurrentSize;

 if (ret == 0)
 {
  p->CurrentFile->Crc32 = ~p->CurrentFile->Crc32;

  ZipAddFileFooter(p);

  p->CurrentFile = ((void*)0);
 }

 return ret;
}
