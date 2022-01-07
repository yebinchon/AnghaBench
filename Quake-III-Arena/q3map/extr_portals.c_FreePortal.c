
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ winding; } ;
typedef TYPE_1__ portal_t ;


 int FreeWinding (scalar_t__) ;
 int c_active_portals ;
 int free (TYPE_1__*) ;
 int numthreads ;

void FreePortal (portal_t *p)
{
 if (p->winding)
  FreeWinding (p->winding);
 if (numthreads == 1)
  c_active_portals--;
 free (p);
}
