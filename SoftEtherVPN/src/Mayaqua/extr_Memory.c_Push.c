
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t num_item; size_t num_reserved; void** p; } ;
typedef TYPE_1__ SK ;


 int KS_INC (int ) ;
 int KS_PUSH_COUNT ;
 void** ReAlloc (void**,int) ;

void Push(SK *s, void *p)
{
 UINT i;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 i = s->num_item;
 s->num_item++;


 if (s->num_item > s->num_reserved)
 {
  s->num_reserved = s->num_reserved * 2;
  s->p = ReAlloc(s->p, sizeof(void *) * s->num_reserved);
 }
 s->p[i] = p;


 KS_INC(KS_PUSH_COUNT);
}
