
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; struct TYPE_4__* p; } ;
typedef TYPE_1__ SK ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int KS_FREESK_COUNT ;
 int KS_INC (int ) ;

void CleanupSk(SK *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 Free(s->p);
 DeleteLock(s->lock);
 Free(s);


 KS_INC(KS_FREESK_COUNT);
}
