
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_2__* png_structrp ;
typedef int png_const_charp ;
typedef int * png_const_bytep ;
typedef int png_byte ;
struct TYPE_17__ {scalar_t__ output_len; } ;
typedef TYPE_3__ compression_state ;
struct TYPE_15__ {char* msg; } ;
struct TYPE_16__ {TYPE_1__ zstream; } ;


 int PNG_COMPRESSION_TYPE_BASE ;
 scalar_t__ Z_OK ;
 int png_check_keyword (TYPE_2__*,int ,int *) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_2__*,char*) ;
 int png_get_uint_32 (int *) ;
 int png_iCCP ;
 scalar_t__ png_text_compress (TYPE_2__*,int ,TYPE_3__*,int) ;
 int png_text_compress_init (TYPE_3__*,int *,int) ;
 int png_write_chunk_data (TYPE_2__*,int *,int) ;
 int png_write_chunk_end (TYPE_2__*) ;
 int png_write_chunk_header (TYPE_2__*,int ,scalar_t__) ;
 int png_write_compressed_data_out (TYPE_2__*,TYPE_3__*) ;

void
png_write_iCCP(png_structrp png_ptr, png_const_charp name,
    png_const_bytep profile)
{
   png_uint_32 name_len;
   png_uint_32 profile_len;
   png_byte new_name[81];
   compression_state comp;
   png_uint_32 temp;

   png_debug(1, "in png_write_iCCP");




   if (profile == ((void*)0))
      png_error(png_ptr, "No profile for iCCP chunk");

   profile_len = png_get_uint_32(profile);

   if (profile_len < 132)
      png_error(png_ptr, "ICC profile too short");

   temp = (png_uint_32) (*(profile+8));
   if (temp > 3 && (profile_len & 0x03))
      png_error(png_ptr, "ICC profile length invalid (not a multiple of 4)");

   {
      png_uint_32 embedded_profile_len = png_get_uint_32(profile);

      if (profile_len != embedded_profile_len)
         png_error(png_ptr, "Profile length does not match profile");
   }

   name_len = png_check_keyword(png_ptr, name, new_name);

   if (name_len == 0)
      png_error(png_ptr, "iCCP: invalid keyword");

   new_name[++name_len] = PNG_COMPRESSION_TYPE_BASE;


   ++name_len;

   png_text_compress_init(&comp, profile, profile_len);


   if (png_text_compress(png_ptr, png_iCCP, &comp, name_len) != Z_OK)
      png_error(png_ptr, png_ptr->zstream.msg);

   png_write_chunk_header(png_ptr, png_iCCP, name_len + comp.output_len);

   png_write_chunk_data(png_ptr, new_name, name_len);

   png_write_compressed_data_out(png_ptr, &comp);

   png_write_chunk_end(png_ptr);
}
