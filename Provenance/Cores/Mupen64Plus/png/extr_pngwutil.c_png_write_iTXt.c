
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_2__* png_structrp ;
typedef size_t png_size_t ;
typedef char* png_const_charp ;
typedef int* png_const_bytep ;
typedef int png_byte ;
struct TYPE_17__ {size_t input_len; size_t output_len; } ;
typedef TYPE_3__ compression_state ;
struct TYPE_15__ {char* msg; } ;
struct TYPE_16__ {TYPE_1__ zstream; } ;


 int PNG_COMPRESSION_TYPE_BASE ;




 size_t PNG_UINT_31_MAX ;
 scalar_t__ Z_OK ;
 size_t png_check_keyword (TYPE_2__*,char*,int*) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_2__*,char*) ;
 int png_iTXt ;
 scalar_t__ png_text_compress (TYPE_2__*,int ,TYPE_3__*,size_t) ;
 int png_text_compress_init (TYPE_3__*,int*,size_t) ;
 int png_write_chunk_data (TYPE_2__*,int*,size_t) ;
 int png_write_chunk_end (TYPE_2__*) ;
 int png_write_chunk_header (TYPE_2__*,int ,size_t) ;
 int png_write_compressed_data_out (TYPE_2__*,TYPE_3__*) ;
 size_t strlen (char*) ;

void
png_write_iTXt(png_structrp png_ptr, int compression, png_const_charp key,
    png_const_charp lang, png_const_charp lang_key, png_const_charp text)
{
   png_uint_32 key_len, prefix_len;
   png_size_t lang_len, lang_key_len;
   png_byte new_key[82];
   compression_state comp;

   png_debug(1, "in png_write_iTXt");

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "iTXt: invalid keyword");


   switch (compression)
   {
      case 131:
      case 129:
         compression = new_key[++key_len] = 0;
         break;

      case 128:
      case 130:
         compression = new_key[++key_len] = 1;
         break;

      default:
         png_error(png_ptr, "iTXt: invalid compression");
   }

   new_key[++key_len] = PNG_COMPRESSION_TYPE_BASE;
   ++key_len;
   if (lang == ((void*)0)) lang = "";
   lang_len = strlen(lang)+1;
   if (lang_key == ((void*)0)) lang_key = "";
   lang_key_len = strlen(lang_key)+1;
   if (text == ((void*)0)) text = "";

   prefix_len = key_len;
   if (lang_len > PNG_UINT_31_MAX-prefix_len)
      prefix_len = PNG_UINT_31_MAX;
   else
      prefix_len = (png_uint_32)(prefix_len + lang_len);

   if (lang_key_len > PNG_UINT_31_MAX-prefix_len)
      prefix_len = PNG_UINT_31_MAX;
   else
      prefix_len = (png_uint_32)(prefix_len + lang_key_len);

   png_text_compress_init(&comp, (png_const_bytep)text, strlen(text));

   if (compression != 0)
   {
      if (png_text_compress(png_ptr, png_iTXt, &comp, prefix_len) != Z_OK)
         png_error(png_ptr, png_ptr->zstream.msg);
   }

   else
   {
      if (comp.input_len > PNG_UINT_31_MAX-prefix_len)
         png_error(png_ptr, "iTXt: uncompressed text too long");


      comp.output_len = (png_uint_32) comp.input_len;
   }

   png_write_chunk_header(png_ptr, png_iTXt, comp.output_len + prefix_len);

   png_write_chunk_data(png_ptr, new_key, key_len);

   png_write_chunk_data(png_ptr, (png_const_bytep)lang, lang_len);

   png_write_chunk_data(png_ptr, (png_const_bytep)lang_key, lang_key_len);

   if (compression != 0)
      png_write_compressed_data_out(png_ptr, &comp);

   else
      png_write_chunk_data(png_ptr, (png_const_bytep)text, comp.output_len);

   png_write_chunk_end(png_ptr);
}
