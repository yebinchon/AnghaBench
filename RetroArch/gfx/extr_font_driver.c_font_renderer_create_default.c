
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* get_default_font ) () ;int ident; void* (* init ) (char const*,unsigned int) ;} ;
typedef TYPE_1__ font_renderer_driver_t ;


 int RARCH_ERR (char*,int ) ;
 int RARCH_LOG (char*,int ) ;
 TYPE_1__** font_backends ;
 char* stub1 () ;
 void* stub2 (char const*,unsigned int) ;

int font_renderer_create_default(
      const font_renderer_driver_t **drv,
      void **handle,
      const char *font_path, unsigned font_size)
{
   unsigned i;

   for (i = 0; font_backends[i]; i++)
   {
      const char *path = font_path;

      if (!path)
         path = font_backends[i]->get_default_font();
      if (!path)
         continue;

      *handle = font_backends[i]->init(path, font_size);
      if (*handle)
      {
         RARCH_LOG("[Font]: Using font rendering backend: %s.\n",
               font_backends[i]->ident);
         *drv = font_backends[i];
         return 1;
      }
      else
         RARCH_ERR("Failed to create rendering backend: %s.\n",
               font_backends[i]->ident);
   }

   *drv = ((void*)0);
   *handle = ((void*)0);

   return 0;
}
