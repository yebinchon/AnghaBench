
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int write_count; scalar_t__ type; TYPE_1__* chunk; } ;
typedef scalar_t__ png_uint_32 ;
struct TYPE_2__ {scalar_t__ chunk_type; } ;


 int LIBPNG_ERROR_CODE ;
 scalar_t__ png_IDAT ;

__attribute__((used)) static png_uint_32
current_type(struct file *file, int code)

{





   if (file->chunk != ((void*)0))
   {
      png_uint_32 type = file->chunk->chunk_type;





      if (code <= LIBPNG_ERROR_CODE && type == png_IDAT &&
         file->write_count == 8)
         type = 0;

      return type;
   }

   else
      return file->type;
}
