
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* directory_autoconfig; char* directory_menu_config; char* path_menu_wallpaper; char* directory_assets; char* path_menu_xmb_font; char* directory_thumbnails; } ;
struct TYPE_5__ {char* input_joypad_driver; char* menu_driver; } ;
struct TYPE_7__ {TYPE_2__ paths; TYPE_1__ arrays; } ;
typedef TYPE_3__ settings_t ;
typedef enum application_special_type { ____Placeholder_application_special_type } application_special_type ;
 int PATH_MAX_LENGTH ;
 int RARCH_PATH_CONFIG ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int fill_pathname_basedir (char*,int ,size_t) ;
 int fill_pathname_join (char*,char*,char*,int) ;
 int fill_pathname_slash (char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int path_get (int ) ;
 int path_is_empty (int ) ;
 int string_is_empty (char*) ;
 int string_is_equal (char const*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,size_t) ;
 char* xmb_theme_ident () ;

void fill_pathname_application_special(char *s,
      size_t len, enum application_special_type type)
{
   switch (type)
   {
      case 132:
         {
            settings_t *settings = config_get_ptr();
            fill_pathname_join(s,
                  settings->paths.directory_autoconfig,
                  settings->arrays.input_joypad_driver,
                  len);
         }
         break;
      case 131:
         {
            settings_t *settings = config_get_ptr();



            if (!string_is_empty(settings->paths.directory_menu_config))
               strlcpy(s, settings->paths.directory_menu_config, len);
            else if (!path_is_empty(RARCH_PATH_CONFIG))
               fill_pathname_basedir(s, path_get(RARCH_PATH_CONFIG), len);
         }
         break;
      case 133:
         break;
      case 135:
         break;
      case 137:
         {
         }

         break;
      case 138:
         break;
      case 136:
         break;
      case 141:
         break;
      case 139:
         break;
      case 140:
         break;
      case 134:
         break;
      case 129:
      {
        char *s1 = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
        char *s2 = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
        settings_t *settings = config_get_ptr();

        s1[0] = '\0';
        s2[0] = '\0';

        fill_pathname_join(s1,
              settings->paths.directory_thumbnails,
              "discord",
              len);
        fill_pathname_join(s2,
              s1, "avatars",
              PATH_MAX_LENGTH * sizeof(char)
              );
        fill_pathname_slash(s2,
              PATH_MAX_LENGTH * sizeof(char)
              );
        strlcpy(s, s2, len);
        free(s1);
        free(s2);
      }
      break;

      case 130:
      {
        char *s1 = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
        char *s2 = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
        settings_t *settings = config_get_ptr();

        s1[0] = '\0';
        s2[0] = '\0';

        fill_pathname_join(s1,
              settings->paths.directory_thumbnails,
              "cheevos",
              len);
        fill_pathname_join(s2,
              s1, "badges",
              PATH_MAX_LENGTH * sizeof(char)
              );
        fill_pathname_slash(s2,
              PATH_MAX_LENGTH * sizeof(char)
              );
        strlcpy(s, s2, len);
        free(s1);
        free(s2);
      }
      break;

      case 128:
      default:
         break;
   }
}
