
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ref; } ;
typedef TYPE_1__ LIST ;


 int CleanupList (TYPE_1__*) ;
 scalar_t__ Release (int *) ;

void ReleaseList(LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (o->ref == ((void*)0) || Release(o->ref) == 0)
 {
  CleanupList(o);
 }
}
