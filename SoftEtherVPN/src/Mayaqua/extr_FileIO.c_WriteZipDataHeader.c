
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Name; int Crc32; int Size; int DateTime; } ;
typedef TYPE_1__ ZIP_FILE ;
struct TYPE_6__ {scalar_t__ ExtraLen; void* FileNameLen; void* Crc32; void* UncompSize; void* CompSize; void* Option; void* FileTime; void* FileDate; scalar_t__ CompType; void* NeedVer; void* Signature; } ;
typedef TYPE_2__ ZIP_DATA_HEADER ;


 void* Endian16 (int ) ;
 void* Endian32 (int ) ;
 int StrLen (int ) ;
 int Swap16 (int) ;
 int Swap32 (int ) ;
 int System64ToDosDate (int ) ;
 int System64ToDosTime (int ) ;
 int ZIP_SIGNATURE ;
 int ZIP_VERSION ;

void WriteZipDataHeader(ZIP_FILE *f, ZIP_DATA_HEADER *h, bool write_sizes)
{

 if (f == ((void*)0) || h ==((void*)0))
 {
  return;
 }

 h->Signature = Endian32(Swap32(ZIP_SIGNATURE));
 h->NeedVer = Endian16(Swap16(ZIP_VERSION));
 h->CompType = 0;
 h->FileDate = Endian16(Swap16(System64ToDosDate(f->DateTime)));
 h->FileTime = Endian16(Swap16(System64ToDosTime(f->DateTime)));
 h->Option = Endian16(Swap16(8));

 if (write_sizes == 0)
 {
  h->CompSize = h->UncompSize = 0;
  h->Crc32 = 0;
 }
 else
 {
  h->CompSize = h->UncompSize = Endian32(Swap32(f->Size));
  h->Crc32 = Endian32(Swap32(f->Crc32));
 }

 h->FileNameLen = Endian16(Swap16(StrLen(f->Name)));
 h->ExtraLen = 0;
}
