
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Ready; int lock; int c; } ;
typedef TYPE_1__ COUNTER ;


 int KS_INC (int ) ;
 int KS_NEW_COUNTER_COUNT ;
 TYPE_1__* Malloc (int) ;
 int NewLock () ;

COUNTER *NewCounter()
{
 COUNTER *c;


 c = Malloc(sizeof(COUNTER));


 c->Ready = 1;
 c->c = 0;


 c->lock = NewLock();


 KS_INC(KS_NEW_COUNTER_COUNT);

 return c;
}
