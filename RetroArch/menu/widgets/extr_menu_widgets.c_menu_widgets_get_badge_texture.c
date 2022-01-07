
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ menu_texture_item ;
typedef int badge_file ;


 int APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES ;
 int PATH_MAX_LENGTH ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int fill_pathname_application_special (char*,int,int ) ;
 int menu_display_reset_textures_list (char*,char*,scalar_t__*,int ,int *,int *) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void menu_widgets_get_badge_texture(menu_texture_item *tex, const char *badge)
{
   char badge_file[16];
   char fullpath[PATH_MAX_LENGTH];

   if (!badge)
   {
      *tex = 0;
      return;
   }

   strlcpy(badge_file, badge, sizeof(badge_file));
   strlcat(badge_file, ".png", sizeof(badge_file));
   fill_pathname_application_special(fullpath,
         PATH_MAX_LENGTH * sizeof(char),
         APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES);

   menu_display_reset_textures_list(badge_file, fullpath,
         tex, TEXTURE_FILTER_MIPMAP_LINEAR, ((void*)0), ((void*)0));
}
