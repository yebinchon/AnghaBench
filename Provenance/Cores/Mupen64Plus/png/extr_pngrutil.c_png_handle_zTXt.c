
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t png_uint_32 ;
struct TYPE_14__ {size_t text_length; int * lang_key; int * lang; scalar_t__ itxt_length; void* text; void* key; int compression; } ;
typedef TYPE_2__ png_text ;
typedef TYPE_3__* png_structrp ;
typedef int png_inforp ;
typedef char* png_const_charp ;
typedef void* png_charp ;
typedef scalar_t__* png_bytep ;
typedef size_t png_alloc_size_t ;
struct TYPE_13__ {char* msg; } ;
struct TYPE_15__ {int user_chunk_cache_max; int mode; TYPE_1__ zstream; scalar_t__* read_buffer; } ;


 int PNG_AFTER_IDAT ;
 scalar_t__ PNG_COMPRESSION_TYPE_BASE ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 size_t PNG_SIZE_MAX ;
 int PNG_TEXT_COMPRESSION_zTXt ;
 scalar_t__ Z_STREAM_END ;
 int png_chunk_benign_error (TYPE_3__*,char*) ;
 int png_chunk_error (TYPE_3__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_3__*,size_t) ;
 int png_crc_read (TYPE_3__*,scalar_t__*,size_t) ;
 int png_debug (int,char*) ;
 scalar_t__ png_decompress_chunk (TYPE_3__*,size_t,size_t,size_t*,int) ;
 scalar_t__* png_read_buffer (TYPE_3__*,size_t,int) ;
 scalar_t__ png_set_text_2 (TYPE_3__*,int ,TYPE_2__*,int) ;

void
png_handle_zTXt(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_const_charp errmsg = ((void*)0);
   png_bytep buffer;
   png_uint_32 keyword_length;

   png_debug(1, "in png_handle_zTXt");
   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
      png_ptr->mode |= PNG_AFTER_IDAT;

   buffer = png_read_buffer(png_ptr, length, 2 );

   if (buffer == ((void*)0))
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of memory");
      return;
   }

   png_crc_read(png_ptr, buffer, length);

   if (png_crc_finish(png_ptr, 0) != 0)
      return;


   for (keyword_length = 0;
      keyword_length < length && buffer[keyword_length] != 0;
      ++keyword_length)
                                           ;

   if (keyword_length > 79 || keyword_length < 1)
      errmsg = "bad keyword";





   else if (keyword_length + 3 > length)
      errmsg = "truncated";

   else if (buffer[keyword_length+1] != PNG_COMPRESSION_TYPE_BASE)
      errmsg = "unknown compression type";

   else
   {
      png_alloc_size_t uncompressed_length = PNG_SIZE_MAX;





      if (png_decompress_chunk(png_ptr, length, keyword_length+2,
          &uncompressed_length, 1 ) == Z_STREAM_END)
      {
         png_text text;





         buffer = png_ptr->read_buffer;
         buffer[uncompressed_length+(keyword_length+2)] = 0;

         text.compression = PNG_TEXT_COMPRESSION_zTXt;
         text.key = (png_charp)buffer;
         text.text = (png_charp)(buffer + keyword_length+2);
         text.text_length = uncompressed_length;
         text.itxt_length = 0;
         text.lang = ((void*)0);
         text.lang_key = ((void*)0);

         if (png_set_text_2(png_ptr, info_ptr, &text, 1) != 0)
            errmsg = "insufficient memory";
      }

      else
         errmsg = png_ptr->zstream.msg;
   }

   if (errmsg != ((void*)0))
      png_chunk_benign_error(png_ptr, errmsg);
}
