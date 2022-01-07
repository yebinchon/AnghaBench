
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;






 int android_api ;
 int g_es3 ;

__attribute__((used)) static bool android_gfx_ctx_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   unsigned version;

   android_api = api;

   switch (api)
   {
      case 130:
      case 129:
         break;
      case 128:



         break;

      case 131:
      default:
         break;
   }

   return 0;
}
