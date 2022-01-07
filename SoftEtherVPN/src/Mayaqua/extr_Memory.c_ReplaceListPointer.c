
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {void** p; } ;
typedef TYPE_1__ LIST ;


 void* LIST_DATA (TYPE_1__*,size_t) ;
 size_t LIST_NUM (TYPE_1__*) ;

bool ReplaceListPointer(LIST *o, void *oldptr, void *newptr)
{
 UINT i;

 if (o == ((void*)0) || oldptr == ((void*)0) || newptr == ((void*)0))
 {
  return 0;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  void *p = LIST_DATA(o, i);

  if (p == oldptr)
  {
   o->p[i] = newptr;
   return 1;
  }
 }

 return 0;
}
