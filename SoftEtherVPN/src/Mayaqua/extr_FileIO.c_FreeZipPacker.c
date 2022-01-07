
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int FileList; int Fifo; } ;
typedef TYPE_1__ ZIP_PACKER ;
typedef TYPE_1__ ZIP_FILE ;
typedef scalar_t__ UINT ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseFifo (int ) ;
 int ReleaseList (int ) ;

void FreeZipPacker(ZIP_PACKER *p)
{
 UINT i;

 if (p == ((void*)0))
 {
  return;
 }

 ReleaseFifo(p->Fifo);

 for (i = 0;i < LIST_NUM(p->FileList);i++)
 {
  ZIP_FILE *f = LIST_DATA(p->FileList, i);

  Free(f);
 }

 ReleaseList(p->FileList);

 Free(p);
}
