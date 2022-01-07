
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_2__* png_structrp ;
typedef scalar_t__ png_size_t ;
typedef scalar_t__ png_byte ;
typedef scalar_t__ png_alloc_size_t ;
struct TYPE_9__ {int * data; scalar_t__ location; scalar_t__ size; int name; } ;
struct TYPE_10__ {scalar_t__ user_chunk_malloc_max; TYPE_1__ unknown_chunk; scalar_t__ mode; int chunk_name; } ;


 int PNG_CSTRING_FROM_CHUNK (int ,int ) ;
 scalar_t__ PNG_SIZE_MAX ;
 scalar_t__ PNG_USER_CHUNK_MALLOC_MAX ;
 int png_bytep ;
 int png_chunk_benign_error (TYPE_2__*,char*) ;
 int png_crc_finish (TYPE_2__*,scalar_t__) ;
 int png_crc_read (TYPE_2__*,int *,scalar_t__) ;
 int png_free (TYPE_2__*,int *) ;
 int png_malloc_warn (TYPE_2__*,scalar_t__) ;
 int * png_voidcast (int ,int ) ;

__attribute__((used)) static int
png_cache_unknown_chunk(png_structrp png_ptr, png_uint_32 length)
{
   png_alloc_size_t limit = PNG_SIZE_MAX;

   if (png_ptr->unknown_chunk.data != ((void*)0))
   {
      png_free(png_ptr, png_ptr->unknown_chunk.data);
      png_ptr->unknown_chunk.data = ((void*)0);
   }
   if (length <= limit)
   {
      PNG_CSTRING_FROM_CHUNK(png_ptr->unknown_chunk.name, png_ptr->chunk_name);

      png_ptr->unknown_chunk.size = (png_size_t)length ;

      png_ptr->unknown_chunk.location = (png_byte)png_ptr->mode ;

      if (length == 0)
         png_ptr->unknown_chunk.data = ((void*)0);

      else
      {

         png_ptr->unknown_chunk.data = png_voidcast(png_bytep,
             png_malloc_warn(png_ptr, length));
      }
   }

   if (png_ptr->unknown_chunk.data == ((void*)0) && length > 0)
   {

      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "unknown chunk exceeds memory limits");
      return 0;
   }

   else
   {
      if (length > 0)
         png_crc_read(png_ptr, png_ptr->unknown_chunk.data, length);
      png_crc_finish(png_ptr, 0);
      return 1;
   }
}
