
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ driver_switch_enable; } ;
struct TYPE_5__ {char* video_driver; } ;
struct TYPE_7__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;
typedef enum retro_hw_context_type { ____Placeholder_retro_hw_context_type } retro_hw_context_type ;
 TYPE_3__* configuration_settings ;
 int string_is_equal (char const*,char*) ;

__attribute__((used)) static bool dynamic_verify_hw_context(enum retro_hw_context_type type,
      unsigned minor, unsigned major)
{
   settings_t *settings = configuration_settings;
   const char *video_ident = settings->arrays.video_driver;

   if (settings->bools.driver_switch_enable)
      return 1;

   switch (type)
   {
      case 128:
         if (!string_is_equal(video_ident, "vulkan"))
            return 0;
         break;
      case 132:
      case 131:
      case 130:
      case 133:
      case 129:
         if (!string_is_equal(video_ident, "gl") &&
             !string_is_equal(video_ident, "glcore"))
         {
            return 0;
         }
         break;
      case 134:
         if (!(string_is_equal(video_ident, "d3d11") && major == 11))
            return 0;
         break;
      default:
         break;
   }

   return 1;
}
