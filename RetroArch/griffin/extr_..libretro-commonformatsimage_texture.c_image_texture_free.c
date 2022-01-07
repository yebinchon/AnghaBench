
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_image {int * pixels; scalar_t__ height; scalar_t__ width; } ;


 int free (int *) ;

void image_texture_free(struct texture_image *img)
{
   if (!img)
      return;

   if (img->pixels)
      free(img->pixels);
   img->width = 0;
   img->height = 0;
   img->pixels = ((void*)0);
}
