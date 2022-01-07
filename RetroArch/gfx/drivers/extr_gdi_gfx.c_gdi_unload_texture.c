
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdi_texture {int * bmp; struct gdi_texture* data; } ;


 int DeleteObject (int *) ;
 int free (struct gdi_texture*) ;

__attribute__((used)) static void gdi_unload_texture(void *data, uintptr_t handle)
{
   struct gdi_texture *texture = (struct gdi_texture*)handle;

   if (!texture)
      return;

   if (texture->data)
      free(texture->data);

   if (texture->bmp)
   {
      DeleteObject(texture->bmp);
      texture->bmp = ((void*)0);
   }

   free(texture);
}
