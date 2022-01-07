
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;
typedef int Display ;


 int DefaultScreen (int *) ;




 int XCloseDisplay (int *) ;
 int * XOpenDisplay (int *) ;
 int g_major ;
 unsigned int g_minor ;
 char* glXQueryExtensionsString (int *,int ) ;
 int strstr (char const*,char*) ;
 int x_api ;

__attribute__((used)) static bool gfx_ctx_x_bind_api(void *data, enum gfx_ctx_api api,
      unsigned major, unsigned minor)
{
   (void)data;

   g_major = major;
   g_minor = minor;
   x_api = api;

   switch (api)
   {
      case 130:



         break;

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
