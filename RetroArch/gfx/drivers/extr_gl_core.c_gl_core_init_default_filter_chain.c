
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ smooth; } ;
struct TYPE_5__ {int filter_chain; TYPE_1__ video_info; int ctx_driver; } ;
typedef TYPE_2__ gl_core_t ;


 int GL_CORE_FILTER_CHAIN_LINEAR ;
 int GL_CORE_FILTER_CHAIN_NEAREST ;
 int RARCH_ERR (char*) ;
 int gl_core_filter_chain_create_default (int ) ;

__attribute__((used)) static bool gl_core_init_default_filter_chain(gl_core_t *gl)
{
   if (!gl->ctx_driver)
      return 0;

   gl->filter_chain = gl_core_filter_chain_create_default(
         gl->video_info.smooth ?
         GL_CORE_FILTER_CHAIN_LINEAR : GL_CORE_FILTER_CHAIN_NEAREST);

   if (!gl->filter_chain)
   {
      RARCH_ERR("Failed to create filter chain.\n");
      return 0;
   }

   return 1;
}
