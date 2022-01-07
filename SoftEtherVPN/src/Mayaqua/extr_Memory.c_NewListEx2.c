
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_reserved; int sorted; int * cmp; void* p; scalar_t__ Param1; scalar_t__ num_item; int * ref; int * lock; } ;
typedef TYPE_1__ LIST ;
typedef int COMPARE ;


 int INIT_NUM_RESERVED ;
 int KS_INC (int ) ;
 int KS_NEWLIST_COUNT ;
 void* Malloc (int) ;
 void* MallocFast (int) ;
 int * NewLock () ;
 int * NewRef () ;

LIST *NewListEx2(COMPARE *cmp, bool fast, bool fast_malloc)
{
 LIST *o;

 if (fast_malloc == 0)
 {
  o = Malloc(sizeof(LIST));
 }
 else
 {
  o = MallocFast(sizeof(LIST));
 }

 if (fast == 0)
 {
  o->lock = NewLock();
  o->ref = NewRef();
 }
 else
 {
  o->lock = ((void*)0);
  o->ref = ((void*)0);
 }
 o->num_item = 0;
 o->num_reserved = INIT_NUM_RESERVED;
 o->Param1 = 0;

 if (fast_malloc == 0)
 {
  o->p = Malloc(sizeof(void *) * o->num_reserved);
 }
 else
 {
  o->p = MallocFast(sizeof(void *) * o->num_reserved);
 }

 o->cmp = cmp;
 o->sorted = 1;


 KS_INC(KS_NEWLIST_COUNT);

 return o;
}
