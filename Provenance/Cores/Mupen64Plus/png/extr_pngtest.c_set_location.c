
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_chunk_data {int* location; int * info_ptr; } ;
typedef int png_structp ;


 int PNG_INFO_PLTE ;
 int after_IDAT ;
 int before_IDAT ;
 int before_PLTE ;
 scalar_t__ png_get_valid (int ,int *,int ) ;

__attribute__((used)) static int
set_location(png_structp png_ptr, struct user_chunk_data *data, int what)
{
   int location;

   if ((data->location[0] & what) != 0 || (data->location[1] & what) != 0)
      return 0;




   if (data->info_ptr == ((void*)0))
      location = what | after_IDAT;

   else if (png_get_valid(png_ptr, data->info_ptr, PNG_INFO_PLTE) != 0)
      location = what | before_IDAT;

   else
      location = what | before_PLTE;

   if (data->location[0] == 0)
      data->location[0] = location;

   else
      data->location[1] = location;

   return 1;
}
