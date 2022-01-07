
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int num_item; int num_reserved; void** p; } ;
typedef TYPE_1__ SL_LIST ;


 int SlCopy (void**,void*,int) ;
 int SlFree (void*) ;
 void** SlZeroMalloc (int) ;

void SlAdd(SL_LIST *o, void *p)
{
 UINT i;

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 i = o->num_item;
 o->num_item++;

 if (o->num_item > o->num_reserved)
 {
  UINT old_num_reserved = o->num_reserved;
  void *p_old = o->p;

  o->num_reserved = o->num_reserved * 2;

  o->p = SlZeroMalloc(sizeof(void *) * o->num_reserved);
  SlCopy(o->p, p_old, sizeof(void *) * old_num_reserved);
  SlFree(p_old);
 }

 o->p[i] = p;
}
