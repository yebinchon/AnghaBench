
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int OSMESA_COMPAT_PROFILE ;
 int g_osmesa_major ;
 int g_osmesa_minor ;
 int g_osmesa_profile ;
 int osmesa_api ;

__attribute__((used)) static bool osmesa_ctx_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major,
      unsigned minor)
{
   if (api != GFX_CTX_OPENGL_API)
      return 0;

   osmesa_api = api;
   g_osmesa_profile = OSMESA_COMPAT_PROFILE;

   if (major)
   {
      g_osmesa_major = major;
      g_osmesa_minor = minor;
   }
   else
   {
      g_osmesa_major = 2;
      g_osmesa_minor = 1;
   }

   return 1;
}
