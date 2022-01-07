
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int GFX_CTX_OPENGL_API ;
 int GFX_CTX_VULKAN_API ;
 int win32_api ;
 unsigned int win32_major ;
 unsigned int win32_minor ;

__attribute__((used)) static bool gfx_ctx_wgl_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   (void)data;

   win32_major = major;
   win32_minor = minor;
   win32_api = api;
   return 0;
}
