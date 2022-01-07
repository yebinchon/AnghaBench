
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ident; } ;
typedef TYPE_1__ menu_ctx_driver_t ;


 TYPE_1__** menu_ctx_drivers ;

const char *menu_driver_find_ident(int idx)
{
   const menu_ctx_driver_t *drv = menu_ctx_drivers[idx];
   if (!drv)
      return ((void*)0);
   return drv->ident;
}
