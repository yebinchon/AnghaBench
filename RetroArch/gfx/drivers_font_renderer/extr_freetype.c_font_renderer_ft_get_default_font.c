
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int directory_assets; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;


 size_t ARRAY_SIZE (char const**) ;
 int PATH_MAX_LENGTH ;
 TYPE_2__* config_get_ptr () ;
 int fill_pathname_join (char*,int ,char*,int) ;
 char const** font_paths ;
 scalar_t__ path_is_valid (char const*) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static const char *font_renderer_ft_get_default_font(void)
{



   size_t i;




   for (i = 0; i < ARRAY_SIZE(font_paths); i++)
   {
      if (path_is_valid(font_paths[i]))
         return font_paths[i];
   }

   return ((void*)0);

}
