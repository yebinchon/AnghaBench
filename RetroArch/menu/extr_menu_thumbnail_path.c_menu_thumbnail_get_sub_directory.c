
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool menu_thumbnail_get_sub_directory(unsigned type_idx, const char **sub_directory)
{
   if (!sub_directory)
      return 0;

   switch (type_idx)
   {
      case 1:
         *sub_directory = "Named_Snaps";
         return 1;
      case 2:
         *sub_directory = "Named_Titles";
         return 1;
      case 3:
         *sub_directory = "Named_Boxarts";
         return 1;
      case 0:
      default:
         break;
   }

   return 0;
}
