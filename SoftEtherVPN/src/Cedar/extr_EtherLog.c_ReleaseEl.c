
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ EL ;


 int CleanupEl (TYPE_1__*) ;
 scalar_t__ Release (int ) ;

void ReleaseEl(EL *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 if (Release(e->ref) == 0)
 {
  CleanupEl(e);
 }
}
