
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ L3SW ;


 int CleanupL3Sw (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseL3Sw(L3SW *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (Release(s->ref) == 0)
 {
  CleanupL3Sw(s);
 }
}
