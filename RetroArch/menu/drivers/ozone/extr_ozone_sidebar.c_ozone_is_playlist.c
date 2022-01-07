
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t categories_selection_ptr; size_t system_tab_end; int* tabs; int depth; } ;
typedef TYPE_1__ ozone_handle_t ;
bool ozone_is_playlist(ozone_handle_t *ozone, bool depth)
{
   bool is_playlist;

   if (ozone->categories_selection_ptr > ozone->system_tab_end)
   {
      is_playlist = 1;
   }
   else
   {
      switch (ozone->tabs[ozone->categories_selection_ptr])
      {
         case 132:
         case 129:
         case 136:



            is_playlist = 0;
            break;
         case 134:
         case 135:
         case 131:






         default:
            is_playlist = 1;
            break;
      }
   }



   if (depth)
      return is_playlist && ozone->depth == 1;

   return is_playlist;
}
