
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** badge_id_list; int * menu_texture_list; scalar_t__* badge_locked; } ;
typedef TYPE_1__ badges_ctx_t ;
typedef int badge_file ;


 int APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES ;
 int PATH_MAX_LENGTH ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int fill_pathname_application_special (char*,int,int ) ;
 int menu_display_reset_textures_list (char*,char*,int *,int ,int *,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

void set_badge_menu_texture(badges_ctx_t * badges, int i)
{
   char badge_file[16];
   char fullpath[PATH_MAX_LENGTH];

   snprintf(badge_file, sizeof(badge_file), "%s%s", badges->badge_id_list[i],
         badges->badge_locked[i] ? "_lock.png" : ".png");

   fill_pathname_application_special(fullpath,
         PATH_MAX_LENGTH * sizeof(char),
         APPLICATION_SPECIAL_DIRECTORY_THUMBNAILS_CHEEVOS_BADGES);





}
