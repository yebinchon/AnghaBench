
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ident; } ;


 TYPE_1__* menu_driver_ctx ;
 int menu_driver_is_alive () ;

const char *menu_driver_ident(void)
{
   if (!menu_driver_is_alive())
      return ((void*)0);
   if (!menu_driver_ctx || !menu_driver_ctx->ident)
      return ((void*)0);
  return menu_driver_ctx->ident;
}
