
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int **** u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int png_structp ;
typedef int png_infop ;
typedef int **** png_bytep ;
struct TYPE_3__ {int width; int height; scalar_t__ data; } ;
typedef TYPE_1__ gx_texture ;
typedef int FILE ;


 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_COMPRESSION_TYPE_DEFAULT ;
 int PNG_FILTER_TYPE_DEFAULT ;
 int PNG_INTERLACE_NONE ;
 int PNG_LIBPNG_VER_STRING ;
 int PNG_TRANSFORM_IDENTITY ;
 int free (int *****) ;
 scalar_t__ memalign (int,int) ;
 int png_create_info_struct (int ) ;
 int png_create_write_struct (int ,int *,int *,int *) ;
 int png_destroy_write_struct (int *,int *) ;
 int png_init_io (int ,int *) ;
 int png_set_IHDR (int ,int ,int,int,int,int ,int ,int ,int ) ;
 int png_set_rows (int ,int ,int *****) ;
 int png_write_end (int ,int *) ;
 int png_write_png (int ,int ,int ,int *) ;

void gxTextureWritePNG(gx_texture *texture, FILE *png_file)
{

  u8 *img_data = (u8 *)memalign(32, texture->width * texture->height * 4);
  if(!img_data) return;


  u16 *ar = (u16 *)(texture->data);
  u16 *gb = (u16 *)(texture->data + 32);
  u32 *dst1 = (u32 *)(img_data);
  u32 *dst2 = dst1 + texture->width;
  u32 *dst3 = dst2 + texture->width;
  u32 *dst4 = dst3 + texture->width;
  u32 i,h,w,pixel;

  for (h=0; h<texture->height; h+=4)
  {
    for (w=0; w<texture->width; w+=4)
    {

      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst1++ = pixel;
        ar++;
        gb++;
      }


      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst2++ = pixel;
        ar++;
        gb++;
      }


      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst3++ = pixel;
        ar++;
        gb++;
      }


      for (i=0; i<4; i++)
      {
        pixel = ((*ar & 0xff) << 24) | (*gb << 8) | ((*ar & 0xff00) >> 8);
        *dst4++ = pixel;
        ar++;
        gb++;
      }


      ar += 16;
      gb += 16;
    }


    dst1 = dst4;
    dst2 = dst1 + texture->width;
    dst3 = dst2 + texture->width;
    dst4 = dst3 + texture->width;
  }


  png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, ((void*)0), ((void*)0), ((void*)0));
  if(!png_ptr)
  {
    free(img_data);
    return;
  }


  png_infop info_ptr = png_create_info_struct (png_ptr);
  if (!info_ptr)
  {
    free(img_data);
    png_destroy_write_struct(&png_ptr, ((void*)0));
    return;
  }


  png_init_io(png_ptr, png_file);


  png_set_IHDR(png_ptr, info_ptr, texture->width, texture->height, 8, PNG_COLOR_TYPE_RGB_ALPHA,
               PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);


  png_bytep *row_pointers = (png_bytep *)memalign (32, sizeof (png_bytep) * texture->height);
  if (!row_pointers)
  {
    free (img_data);
    png_destroy_write_struct(&png_ptr, &info_ptr);
    return;
  }


  for (i = 0; i < texture->height; i++)
  {
    row_pointers[i] = img_data + (i * texture->width * 4);
  }


  png_set_rows(png_ptr,info_ptr,row_pointers);


  png_write_png(png_ptr,info_ptr,PNG_TRANSFORM_IDENTITY,((void*)0));


  png_write_end(png_ptr, ((void*)0));
  free(row_pointers);
  free(img_data);
  png_destroy_write_struct(&png_ptr, &info_ptr);
}
