
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cheat_manager_setup_search_meta(unsigned int bitsize, unsigned int *bytes_per_item, unsigned int *mask, unsigned int *bits)
{
   switch (bitsize)
   {
      case 0:
         *bytes_per_item = 1;
         *bits = 1;
         *mask = 0x01;
         break;
      case 1:
         *bytes_per_item = 1;
         *bits = 2;
         *mask = 0x03;
         break;
      case 2:
         *bytes_per_item = 1;
         *bits = 4;
         *mask = 0x0F;
         break;
      case 3:
         *bytes_per_item = 1;
         *bits = 8;
         *mask = 0xFF;
         break;
      case 4:
         *bytes_per_item = 2;
         *bits = 8;
         *mask = 0xFFFF;
         break;
      case 5:
         *bytes_per_item = 4;
         *bits = 8;
         *mask = 0xFFFFFFFF;
         break;
   }
}
