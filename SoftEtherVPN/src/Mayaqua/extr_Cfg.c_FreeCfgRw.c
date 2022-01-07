
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* FileName; struct TYPE_4__* FileNameW; int lock; int * Io; } ;
typedef TYPE_1__ CFG_RW ;


 int DeleteLock (int ) ;
 int FileClose (int *) ;
 int Free (TYPE_1__*) ;

void FreeCfgRw(CFG_RW *rw)
{

 if (rw == ((void*)0))
 {
  return;
 }

 if (rw->Io != ((void*)0))
 {
  FileClose(rw->Io);
 }

 DeleteLock(rw->lock);
 Free(rw->FileNameW);
 Free(rw->FileName);
 Free(rw);
}
