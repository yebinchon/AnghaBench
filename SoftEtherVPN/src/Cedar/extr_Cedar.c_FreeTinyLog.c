
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int io; } ;
typedef TYPE_1__ TINY_LOG ;


 int DeleteLock (int ) ;
 int FileClose (int ) ;
 int Free (TYPE_1__*) ;

void FreeTinyLog(TINY_LOG *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FileClose(t->io);
 DeleteLock(t->Lock);
 Free(t);
}
