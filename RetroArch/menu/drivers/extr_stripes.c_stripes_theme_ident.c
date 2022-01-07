
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int menu_xmb_theme; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
 TYPE_2__* config_get_ptr () ;

const char* stripes_theme_ident(void)
{
   settings_t *settings = config_get_ptr();
   switch (settings->uints.menu_xmb_theme)
   {
      case 135:
         return "flatui";
      case 130:
         return "retroactive";
      case 129:
         return "retrosystem";
      case 131:
         return "pixel";
      case 132:
         return "neoactive";
      case 128:
         return "systematic";
      case 136:
         return "dot-art";
      case 137:
         return "custom";
      case 133:
         return "monochrome-inverted";
      case 134:
      default:
         break;
   }

   return "monochrome";
}
