
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ VH ;


 int CleanupVirtual (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseVirtual(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 if (Release(v->ref) == 0)
 {
  CleanupVirtual(v);
 }
}
