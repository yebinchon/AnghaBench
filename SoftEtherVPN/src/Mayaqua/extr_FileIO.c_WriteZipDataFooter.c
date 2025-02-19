
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Size; int Crc32; } ;
typedef TYPE_1__ ZIP_FILE ;
struct TYPE_6__ {void* Crc32; void* UncompSize; void* CompSize; void* Signature; } ;
typedef TYPE_2__ ZIP_DATA_FOOTER ;


 void* Endian32 (int ) ;
 int Swap32 (int) ;

void WriteZipDataFooter(ZIP_FILE *f, ZIP_DATA_FOOTER *h)
{

 if (f == ((void*)0) || h ==((void*)0))
 {
  return;
 }

 h->Signature = Endian32(Swap32(0x08074B50));
 h->CompSize = h->UncompSize = Endian32(Swap32(f->Size));
 h->Crc32 = Endian32(Swap32(f->Crc32));
}
