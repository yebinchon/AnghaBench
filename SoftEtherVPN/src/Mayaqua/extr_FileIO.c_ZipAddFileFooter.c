
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int f ;
struct TYPE_3__ {int Fifo; int CurrentFile; } ;
typedef TYPE_1__ ZIP_PACKER ;
typedef int ZIP_DATA_FOOTER ;


 int WriteFifo (int ,int *,int) ;
 int WriteZipDataFooter (int ,int *) ;
 int Zero (int *,int) ;

void ZipAddFileFooter(ZIP_PACKER *p)
{
 ZIP_DATA_FOOTER f;

 if (p == ((void*)0))
 {
  return;
 }

 Zero(&f, sizeof(f));
 WriteZipDataFooter(p->CurrentFile, &f);

 WriteFifo(p->Fifo, &f, sizeof(f));
}
