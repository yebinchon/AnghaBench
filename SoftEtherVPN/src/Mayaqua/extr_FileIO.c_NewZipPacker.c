
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * CurrentFile; int FileList; int Fifo; } ;
typedef TYPE_1__ ZIP_PACKER ;


 int NewFifo () ;
 int NewList (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

ZIP_PACKER *NewZipPacker()
{
 ZIP_PACKER *p = ZeroMalloc(sizeof(ZIP_PACKER));

 p->Fifo = NewFifo();
 p->FileList = NewList(((void*)0));
 p->CurrentFile = ((void*)0);

 return p;
}
