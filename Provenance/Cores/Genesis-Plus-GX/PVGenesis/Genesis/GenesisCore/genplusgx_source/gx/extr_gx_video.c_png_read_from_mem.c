
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_size_t ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ buffer; } ;
typedef TYPE_1__ png_image ;
typedef int png_bytep ;


 int memcpy (int ,scalar_t__,int ) ;
 scalar_t__ png_get_io_ptr (int ) ;

__attribute__((used)) static void png_read_from_mem (png_structp png_ptr, png_bytep data, png_size_t length)
{
  png_image *image = (png_image *)png_get_io_ptr(png_ptr);


  memcpy (data, image->buffer + image->offset, length);


  image->offset += length;
}
