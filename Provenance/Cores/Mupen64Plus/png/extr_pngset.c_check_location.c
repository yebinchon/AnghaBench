
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_const_structrp ;
typedef int png_byte ;
struct TYPE_5__ {int mode; } ;


 int PNG_AFTER_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_IS_READ_STRUCT ;
 int png_app_warning (TYPE_1__*,char*) ;
 int png_error (TYPE_1__*,char*) ;

__attribute__((used)) static png_byte
check_location(png_const_structrp png_ptr, int location)
{
   location &= (PNG_HAVE_IHDR|PNG_HAVE_PLTE|PNG_AFTER_IDAT);





   if (location == 0 && (png_ptr->mode & PNG_IS_READ_STRUCT) == 0)
   {

      png_app_warning(png_ptr,
          "png_set_unknown_chunks now expects a valid location");

      location = (png_byte)(png_ptr->mode &
          (PNG_HAVE_IHDR|PNG_HAVE_PLTE|PNG_AFTER_IDAT));
   }




   if (location == 0)
      png_error(png_ptr, "invalid location in png_set_unknown_chunks");




   while (location != (location & -location))
      location &= ~(location & -location);




   return (png_byte)location;
}
