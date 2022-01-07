
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_menu_xmb_animation_horizontal_highlight(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case 0:
         strlcpy(s, "Easing Out Quad", len);
         break;
      case 1:
         strlcpy(s, "Easing In Sine", len);
         break;
      case 2:
         strlcpy(s, "Easing Out Bounce", len);
         break;
   }
}
