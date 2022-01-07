
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ png_uint_32 ;
typedef int png_structrp ;
typedef scalar_t__ png_size_t ;
typedef char* png_const_charp ;
typedef int * png_const_bytep ;
typedef int png_byte ;


 scalar_t__ PNG_UINT_31_MAX ;
 scalar_t__ png_check_keyword (int ,char*,int *) ;
 int png_debug (int,char*) ;
 int png_error (int ,char*) ;
 int png_tEXt ;
 int png_write_chunk_data (int ,int *,scalar_t__) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_header (int ,int ,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
png_write_tEXt(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    png_size_t text_len)
{
   png_uint_32 key_len;
   png_byte new_key[80];

   png_debug(1, "in png_write_tEXt");

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "tEXt: invalid keyword");

   if (text == ((void*)0) || *text == '\0')
      text_len = 0;

   else
      text_len = strlen(text);

   if (text_len > PNG_UINT_31_MAX - (key_len+1))
      png_error(png_ptr, "tEXt: text too long");


   png_write_chunk_header(png_ptr, png_tEXt,
       (png_uint_32) (key_len + text_len + 1));






   png_write_chunk_data(png_ptr, new_key, key_len + 1);

   if (text_len != 0)
      png_write_chunk_data(png_ptr, (png_const_bytep)text, text_len);

   png_write_chunk_end(png_ptr);
}
