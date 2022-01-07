
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_image {int supports_rgba; scalar_t__ height; scalar_t__ width; int * pixels; } ;
struct nbio_t {int dummy; } ;
typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;


 int IMAGE_TYPE_NONE ;
 int NBIO_READ ;
 int image_texture_get_type (char const*) ;
 scalar_t__ image_texture_load_internal (int,void*,size_t,struct texture_image*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int image_texture_set_color_shifts (unsigned int*,unsigned int*,unsigned int*,unsigned int*,struct texture_image*) ;
 int nbio_begin_read (struct nbio_t*) ;
 int nbio_free (struct nbio_t*) ;
 void* nbio_get_ptr (struct nbio_t*,size_t*) ;
 int nbio_iterate (struct nbio_t*) ;
 scalar_t__ nbio_open (char const*,int ) ;

bool image_texture_load(struct texture_image *out_img,
      const char *path)
{
   unsigned r_shift, g_shift, b_shift, a_shift;
   size_t file_len = 0;
   struct nbio_t *handle = ((void*)0);
   void *ptr = ((void*)0);
   enum image_type_enum type = image_texture_get_type(path);

   image_texture_set_color_shifts(&r_shift, &g_shift, &b_shift,
         &a_shift, out_img);

   if (type != IMAGE_TYPE_NONE)
   {
      handle = (struct nbio_t*)nbio_open(path, NBIO_READ);
      if (!handle)
         goto error;
      nbio_begin_read(handle);

      while (!nbio_iterate(handle));

      ptr = nbio_get_ptr(handle, &file_len);

      if (!ptr)
         goto error;

      if (image_texture_load_internal(
               type,
               ptr, file_len, out_img,
               a_shift, r_shift, g_shift, b_shift))
         goto success;
   }

error:
   out_img->supports_rgba = 0;
   out_img->pixels = ((void*)0);
   out_img->width = 0;
   out_img->height = 0;
   if (handle)
      nbio_free(handle);

   return 0;

success:
   if (handle)
      nbio_free(handle);

   return 1;
}
