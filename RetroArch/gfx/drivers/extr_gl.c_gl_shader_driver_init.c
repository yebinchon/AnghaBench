
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* shader_data; TYPE_4__* shader; int path; int data; int shader_type; } ;
typedef TYPE_2__ video_shader_ctx_init_t ;
struct TYPE_7__ {int menu_driver; } ;
struct TYPE_9__ {TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {int (* init_menu_shaders ) (void*) ;void* (* init ) (int ,int ) ;} ;


 int RARCH_LOG (char*) ;
 TYPE_3__* config_get_ptr () ;
 TYPE_4__* gl_shader_driver_set_backend (int ) ;
 scalar_t__ string_is_equal (int ,char*) ;
 void* stub1 (int ,int ) ;
 int stub2 (void*) ;

__attribute__((used)) static bool gl_shader_driver_init(video_shader_ctx_init_t *init)
{
   void *tmp = ((void*)0);
   settings_t *settings = config_get_ptr();

   if (!init->shader || !init->shader->init)
   {
      init->shader = gl_shader_driver_set_backend(init->shader_type);

      if (!init->shader)
         return 0;
   }

   tmp = init->shader->init(init->data, init->path);

   if (!tmp)
      return 0;

   if (string_is_equal(settings->arrays.menu_driver, "xmb")
         && init->shader->init_menu_shaders)
   {
      RARCH_LOG("Setting up menu pipeline shaders for XMB ... \n");
      init->shader->init_menu_shaders(tmp);
   }

   init->shader_data = tmp;

   return 1;
}
