
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_item; int no_compact; int num_reserved; void** p; } ;
typedef TYPE_1__ SK ;


 int INIT_NUM_RESERVED ;
 int KS_INC (int ) ;
 int KS_POP_COUNT ;
 void** ReAlloc (void**,int) ;

void *Pop(SK *s)
{
 void *ret;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }
 if (s->num_item == 0)
 {
  return ((void*)0);
 }
 ret = s->p[s->num_item - 1];
 s->num_item--;


 if (s->no_compact == 0)
 {

  if ((s->num_item * 2) <= s->num_reserved)
  {
   if (s->num_reserved >= (INIT_NUM_RESERVED * 2))
   {
    s->num_reserved = s->num_reserved / 2;
    s->p = ReAlloc(s->p, sizeof(void *) * s->num_reserved);
   }
  }
 }


 KS_INC(KS_POP_COUNT);

 return ret;
}
