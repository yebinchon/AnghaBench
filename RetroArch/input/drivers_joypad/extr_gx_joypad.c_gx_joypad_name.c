
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* pad_type ;

__attribute__((used)) static const char *gx_joypad_name(unsigned pad)
{
   switch (pad_type[pad])
   {
      case 130:
         return "GameCube Controller";
   }

   return ((void*)0);
}
