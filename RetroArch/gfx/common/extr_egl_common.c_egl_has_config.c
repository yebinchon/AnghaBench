
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ egl_ctx_data_t ;


 int RARCH_ERR (char*) ;

bool egl_has_config(egl_ctx_data_t *egl)
{
   if (!egl->config)
   {
      RARCH_ERR("[EGL]: No EGL configurations available.\n");
      return 0;
   }
   return 1;
}
