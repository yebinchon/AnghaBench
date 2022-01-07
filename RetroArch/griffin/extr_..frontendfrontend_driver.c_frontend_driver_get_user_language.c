
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get_user_language ) () ;} ;
typedef TYPE_1__ frontend_ctx_driver_t ;
typedef enum retro_language { ____Placeholder_retro_language } retro_language ;


 int RETRO_LANGUAGE_ENGLISH ;
 TYPE_1__* frontend_get_ptr () ;
 int stub1 () ;

enum retro_language frontend_driver_get_user_language(void)
{
   frontend_ctx_driver_t *frontend = frontend_get_ptr();
   if (!frontend || !frontend->get_user_language)
      return RETRO_LANGUAGE_ENGLISH;
   return frontend->get_user_language();
}
