
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int menu_driver; } ;
struct TYPE_10__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {TYPE_7__* driver_ctx; int userdata; } ;
typedef TYPE_3__ menu_handle_t ;
struct TYPE_12__ {int (* lists_init ) (TYPE_3__*) ;int ident; scalar_t__ (* init ) (int *,int) ;} ;


 TYPE_2__* config_get_ptr () ;
 TYPE_7__* menu_driver_ctx ;
 TYPE_3__* menu_driver_data ;
 int menu_init (TYPE_3__*) ;
 int menu_userdata ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ stub1 (int *,int) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static bool menu_driver_init_internal(bool video_is_threaded)
{
   if (menu_driver_ctx->init)
   {
      menu_driver_data = (menu_handle_t*)
         menu_driver_ctx->init(&menu_userdata, video_is_threaded);
      menu_driver_data->userdata = menu_userdata;
      menu_driver_data->driver_ctx = menu_driver_ctx;
   }

   if (!menu_driver_data || !menu_init(menu_driver_data))
      return 0;

   {
      settings_t *settings = config_get_ptr();
      strlcpy(settings->arrays.menu_driver, menu_driver_ctx->ident,
            sizeof(settings->arrays.menu_driver));
   }

   if (menu_driver_ctx->lists_init)
      if (!menu_driver_ctx->lists_init(menu_driver_data))
         return 0;

   return 1;
}
