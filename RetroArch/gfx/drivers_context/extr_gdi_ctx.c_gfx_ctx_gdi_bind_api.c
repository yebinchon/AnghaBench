
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;


 int win32_gdi_api ;
 unsigned int win32_gdi_major ;
 unsigned int win32_gdi_minor ;

__attribute__((used)) static bool gfx_ctx_gdi_bind_api(void *data,
      enum gfx_ctx_api api, unsigned major, unsigned minor)
{
   (void)data;

   win32_gdi_major = major;
   win32_gdi_minor = minor;
   win32_gdi_api = api;

   return 1;
}
