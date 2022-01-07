
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t num_item; void** p; int num_reserved; } ;
typedef TYPE_1__ LIST ;


 int INIT_NUM_RESERVED ;
 int KS_DELETE_COUNT ;
 int KS_INC (int ) ;
 void** ReAlloc (void**,int) ;

bool Delete(LIST *o, void *p)
{
 UINT i, n;

 if (o == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < o->num_item;i++)
 {
  if (o->p[i] == p)
  {
   break;
  }
 }
 if (i == o->num_item)
 {
  return 0;
 }

 n = i;
 for (i = n;i < (o->num_item - 1);i++)
 {
  o->p[i] = o->p[i + 1];
 }
 o->num_item--;
 if ((o->num_item * 2) <= o->num_reserved)
 {
  if (o->num_reserved > (INIT_NUM_RESERVED * 2))
  {
   o->num_reserved = o->num_reserved / 2;
   o->p = ReAlloc(o->p, sizeof(void *) * o->num_reserved);
  }
 }


 KS_INC(KS_DELETE_COUNT);

 return 1;
}
