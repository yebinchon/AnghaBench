
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int materialui_theme_t ;
typedef enum materialui_color_theme { ____Placeholder_materialui_color_theme } materialui_color_theme ;
 int const materialui_theme_blue ;
 int const materialui_theme_blue_grey ;
 int const materialui_theme_cutie_blue ;
 int const materialui_theme_cutie_cyan ;
 int const materialui_theme_cutie_green ;
 int const materialui_theme_cutie_orange ;
 int const materialui_theme_cutie_pink ;
 int const materialui_theme_cutie_purple ;
 int const materialui_theme_cutie_red ;
 int const materialui_theme_dark_blue ;
 int const materialui_theme_green ;
 int const materialui_theme_gruvbox_dark ;
 int const materialui_theme_materialui ;
 int const materialui_theme_materialui_dark ;
 int const materialui_theme_nord ;
 int const materialui_theme_nvidia_shield ;
 int const materialui_theme_ozone_dark ;
 int const materialui_theme_red ;
 int const materialui_theme_solarized_dark ;
 int const materialui_theme_virtual_boy ;
 int const materialui_theme_yellow ;

__attribute__((used)) static const materialui_theme_t *materialui_get_theme(enum materialui_color_theme color_theme)
{
   switch (color_theme)
   {
      case 148:
         return &materialui_theme_blue;
      case 147:
         return &materialui_theme_blue_grey;
      case 139:
         return &materialui_theme_dark_blue;
      case 138:
         return &materialui_theme_green;
      case 131:
         return &materialui_theme_red;
      case 128:
         return &materialui_theme_yellow;
      case 133:
         return &materialui_theme_nvidia_shield;
      case 136:
         return &materialui_theme_materialui;
      case 135:
         return &materialui_theme_materialui_dark;
      case 132:
         return &materialui_theme_ozone_dark;
      case 134:
         return &materialui_theme_nord;
      case 137:
         return &materialui_theme_gruvbox_dark;
      case 130:
         return &materialui_theme_solarized_dark;
      case 146:
         return &materialui_theme_cutie_blue;
      case 145:
         return &materialui_theme_cutie_cyan;
      case 144:
         return &materialui_theme_cutie_green;
      case 143:
         return &materialui_theme_cutie_orange;
      case 142:
         return &materialui_theme_cutie_pink;
      case 141:
         return &materialui_theme_cutie_purple;
      case 140:
         return &materialui_theme_cutie_red;
      case 129:
         return &materialui_theme_virtual_boy;
      default:
         break;
   }

   return &materialui_theme_blue;
}
