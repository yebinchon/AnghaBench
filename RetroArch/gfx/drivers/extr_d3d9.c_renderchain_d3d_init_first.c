
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;
struct TYPE_5__ {int ident; void* (* chain_new ) () ;} ;
typedef TYPE_1__ d3d9_renderchain_driver_t ;




 int RARCH_SHADER_CG ;
 int RARCH_SHADER_HLSL ;


 int string_is_equal (int ,char*) ;
 void* stub1 () ;
 int supported_shader_type ;

__attribute__((used)) static bool renderchain_d3d_init_first(
      enum gfx_ctx_api api,
      const d3d9_renderchain_driver_t **renderchain_driver,
      void **renderchain_handle)
{
   switch (api)
   {
      case 131:
         {
            static const d3d9_renderchain_driver_t *renderchain_d3d_drivers[] =
            {






               ((void*)0)
            };
            unsigned i;

            for (i = 0; renderchain_d3d_drivers[i]; i++)
            {
               void *data = renderchain_d3d_drivers[i]->chain_new();

               if (!data)
                  continue;

               *renderchain_driver = renderchain_d3d_drivers[i];
               *renderchain_handle = data;

               if (string_is_equal(renderchain_d3d_drivers[i]->ident, "cg_d3d9"))
                  supported_shader_type = RARCH_SHADER_CG;
               else if (string_is_equal(renderchain_d3d_drivers[i]->ident, "hlsl_d3d9"))
                  supported_shader_type = RARCH_SHADER_HLSL;

               return 1;
            }
         }
         break;
      case 130:
      default:
         break;
   }

   return 0;
}
