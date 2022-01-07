
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int c; } ;
typedef TYPE_1__ COUNTER ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int KS_CURRENT_COUNT ;
 int KS_DELETE_COUNTER_COUNT ;
 int KS_INC (int ) ;
 int KS_SUB (int ,int ) ;

void DeleteCounter(COUNTER *c)
{

 if (c == ((void*)0))
 {
  return;
 }


 KS_INC(KS_DELETE_COUNTER_COUNT);
 KS_SUB(KS_CURRENT_COUNT, c->c);

 DeleteLock(c->lock);
 Free(c);
}
