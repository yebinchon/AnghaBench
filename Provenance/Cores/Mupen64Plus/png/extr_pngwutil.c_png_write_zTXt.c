
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef size_t png_uint_32 ;
typedef TYPE_2__* png_structrp ;
typedef int * png_const_charp ;
typedef int png_const_bytep ;
typedef int png_byte ;
struct TYPE_18__ {scalar_t__ output_len; } ;
typedef TYPE_3__ compression_state ;
struct TYPE_16__ {char* msg; } ;
struct TYPE_17__ {TYPE_1__ zstream; } ;


 int PNG_COMPRESSION_TYPE_BASE ;
 int PNG_TEXT_COMPRESSION_NONE ;
 int PNG_TEXT_COMPRESSION_zTXt ;
 scalar_t__ Z_OK ;
 size_t png_check_keyword (TYPE_2__*,int *,int *) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_2__*,char*) ;
 scalar_t__ png_text_compress (TYPE_2__*,int ,TYPE_3__*,size_t) ;
 int png_text_compress_init (TYPE_3__*,int ,int ) ;
 int png_write_chunk_data (TYPE_2__*,int *,size_t) ;
 int png_write_chunk_end (TYPE_2__*) ;
 int png_write_chunk_header (TYPE_2__*,int ,scalar_t__) ;
 int png_write_compressed_data_out (TYPE_2__*,TYPE_3__*) ;
 int png_write_tEXt (TYPE_2__*,int *,int *,int ) ;
 int png_zTXt ;
 int strlen (int *) ;

void
png_write_zTXt(png_structrp png_ptr, png_const_charp key, png_const_charp text,
    int compression)
{
   png_uint_32 key_len;
   png_byte new_key[81];
   compression_state comp;

   png_debug(1, "in png_write_zTXt");

   if (compression == PNG_TEXT_COMPRESSION_NONE)
   {
      png_write_tEXt(png_ptr, key, text, 0);
      return;
   }

   if (compression != PNG_TEXT_COMPRESSION_zTXt)
      png_error(png_ptr, "zTXt: invalid compression type");

   key_len = png_check_keyword(png_ptr, key, new_key);

   if (key_len == 0)
      png_error(png_ptr, "zTXt: invalid keyword");


   new_key[++key_len] = PNG_COMPRESSION_TYPE_BASE;
   ++key_len;


   png_text_compress_init(&comp, (png_const_bytep)text,
       text == ((void*)0) ? 0 : strlen(text));

   if (png_text_compress(png_ptr, png_zTXt, &comp, key_len) != Z_OK)
      png_error(png_ptr, png_ptr->zstream.msg);


   png_write_chunk_header(png_ptr, png_zTXt, key_len + comp.output_len);


   png_write_chunk_data(png_ptr, new_key, key_len);


   png_write_compressed_data_out(png_ptr, &comp);


   png_write_chunk_end(png_ptr);
}
