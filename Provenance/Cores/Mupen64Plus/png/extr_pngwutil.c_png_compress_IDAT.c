
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ uInt ;
typedef TYPE_1__* png_structrp ;
typedef int png_const_bytep ;
typedef int * png_bytep ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_15__ {int * output; int * next; } ;
struct TYPE_13__ {char* msg; scalar_t__ avail_out; scalar_t__ avail_in; int * next_out; int next_in; } ;
struct TYPE_14__ {scalar_t__ zowner; scalar_t__ zbuffer_size; int mode; scalar_t__ compression_type; TYPE_11__ zstream; TYPE_4__* zbuffer_list; } ;


 int PNGZ_INPUT_CAST (int ) ;
 int PNG_AFTER_IDAT ;
 int PNG_COMPRESSION_BUFFER_SIZE (TYPE_1__*) ;
 scalar_t__ PNG_COMPRESSION_TYPE_BASE ;
 int PNG_HAVE_IDAT ;
 scalar_t__ ZLIB_IO_MAX ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_11__*,int) ;
 int optimize_cmf (int *,int ) ;
 scalar_t__ png_IDAT ;
 int png_compression_bufferp ;
 int png_deflate_claim (TYPE_1__*,scalar_t__,int ) ;
 int png_error (TYPE_1__*,char*) ;
 int png_free_buffer_list (TYPE_1__*,int **) ;
 int png_image_size (TYPE_1__*) ;
 int png_malloc (TYPE_1__*,int ) ;
 TYPE_4__* png_voidcast (int ,int ) ;
 int png_write_complete_chunk (TYPE_1__*,scalar_t__,int *,scalar_t__) ;
 int png_zstream_error (TYPE_1__*,int) ;

void
png_compress_IDAT(png_structrp png_ptr, png_const_bytep input,
    png_alloc_size_t input_len, int flush)
{
   if (png_ptr->zowner != png_IDAT)
   {





      if (png_ptr->zbuffer_list == ((void*)0))
      {
         png_ptr->zbuffer_list = png_voidcast(png_compression_bufferp,
             png_malloc(png_ptr, PNG_COMPRESSION_BUFFER_SIZE(png_ptr)));
         png_ptr->zbuffer_list->next = ((void*)0);
      }

      else
         png_free_buffer_list(png_ptr, &png_ptr->zbuffer_list->next);


      if (png_deflate_claim(png_ptr, png_IDAT, png_image_size(png_ptr)) != Z_OK)
         png_error(png_ptr, png_ptr->zstream.msg);




      png_ptr->zstream.next_out = png_ptr->zbuffer_list->output;
      png_ptr->zstream.avail_out = png_ptr->zbuffer_size;
   }





   png_ptr->zstream.next_in = PNGZ_INPUT_CAST(input);
   png_ptr->zstream.avail_in = 0;
   for (;;)
   {
      int ret;


      uInt avail = ZLIB_IO_MAX;

      if (avail > input_len)
         avail = (uInt)input_len;

      png_ptr->zstream.avail_in = avail;
      input_len -= avail;

      ret = deflate(&png_ptr->zstream, input_len > 0 ? Z_NO_FLUSH : flush);


      input_len += png_ptr->zstream.avail_in;
      png_ptr->zstream.avail_in = 0;





      if (png_ptr->zstream.avail_out == 0)
      {
         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size;
         png_write_complete_chunk(png_ptr, png_IDAT, data, size);
         png_ptr->mode |= PNG_HAVE_IDAT;

         png_ptr->zstream.next_out = data;
         png_ptr->zstream.avail_out = size;





         if (ret == Z_OK && flush != Z_NO_FLUSH)
            continue;
      }




      if (ret == Z_OK)
      {




         if (input_len == 0)
         {
            if (flush == Z_FINISH)
               png_error(png_ptr, "Z_OK on Z_FINISH with output space");

            return;
         }
      }

      else if (ret == Z_STREAM_END && flush == Z_FINISH)
      {



         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size - png_ptr->zstream.avail_out;







         png_write_complete_chunk(png_ptr, png_IDAT, data, size);
         png_ptr->zstream.avail_out = 0;
         png_ptr->zstream.next_out = ((void*)0);
         png_ptr->mode |= PNG_HAVE_IDAT | PNG_AFTER_IDAT;

         png_ptr->zowner = 0;
         return;
      }

      else
      {

         png_zstream_error(png_ptr, ret);
         png_error(png_ptr, png_ptr->zstream.msg);
      }
   }
}
