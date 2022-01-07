
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {void* selection_buf_old; int depth; int old_depth; size_t system_tab_end; void* horizontal_list; int * tabs; scalar_t__ alpha; scalar_t__ textures_arrow_alpha; scalar_t__ categories_x_pos; scalar_t__ x; scalar_t__ categories_active_idx_old; scalar_t__ categories_active_idx; } ;
typedef TYPE_3__ stripes_handle_t ;
struct TYPE_8__ {int kiosk_mode_enable; scalar_t__ menu_content_show_add; scalar_t__ menu_content_show_netplay; scalar_t__ menu_content_show_video; scalar_t__ menu_content_show_music; scalar_t__ menu_content_show_images; scalar_t__ menu_content_show_history; scalar_t__ menu_content_show_favorites; scalar_t__ menu_content_show_settings; } ;
struct TYPE_7__ {float menu_scale_factor; } ;
struct TYPE_10__ {TYPE_2__ bools; TYPE_1__ floats; } ;
typedef TYPE_4__ settings_t ;
typedef void menu_handle_t ;
typedef void file_list_t ;


 int RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ;
 int STRIPES_SYSTEM_TAB_ADD ;
 int STRIPES_SYSTEM_TAB_FAVORITES ;
 int STRIPES_SYSTEM_TAB_HISTORY ;
 int STRIPES_SYSTEM_TAB_IMAGES ;
 int STRIPES_SYSTEM_TAB_MAIN ;
 int STRIPES_SYSTEM_TAB_MUSIC ;
 int STRIPES_SYSTEM_TAB_NETPLAY ;
 int STRIPES_SYSTEM_TAB_SETTINGS ;
 int STRIPES_SYSTEM_TAB_VIDEO ;
 scalar_t__ calloc (int,int) ;
 TYPE_4__* config_get_ptr () ;
 int file_list_free (void*) ;
 int free (void*) ;
 int menu_display_allocate_white_texture () ;
 int menu_display_init_first_driver (int) ;
 int menu_display_set_height (unsigned int) ;
 int menu_display_set_width (unsigned int) ;
 int menu_driver_ctl (int ,int *) ;
 double pow (float,double) ;
 int stripes_free_list_nodes (void*,int) ;
 int stripes_init_horizontal_list (TYPE_3__*) ;
 int* stripes_scale_mod ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static void *stripes_init(void **userdata, bool video_is_threaded)
{
   unsigned width, height;
   int i;
   stripes_handle_t *stripes = ((void*)0);
   settings_t *settings = config_get_ptr();
   menu_handle_t *menu = (menu_handle_t*)calloc(1, sizeof(*menu));
   float scale_value = settings->floats.menu_scale_factor * 100.0f;




   if (scale_value < 100)
   {

      stripes_scale_mod[0] = -0.03 * scale_value + 4.083;

      stripes_scale_mod[1] = -0.03 * scale_value + 3.95;

      stripes_scale_mod[2] = -0.02 * scale_value + 3.033;

      stripes_scale_mod[3] = -0.014 * scale_value + 2.416;

      stripes_scale_mod[4] = -0.03 * scale_value + 3.916;

      stripes_scale_mod[5] = -0.06 * scale_value + 6.933;

      stripes_scale_mod[6] = -0.028 * scale_value + 3.866;

      stripes_scale_mod[7] = 134.179 * pow(scale_value, -1.0778);

      for (i = 0; i < 8; i++)
         if (stripes_scale_mod[i] < 1)
            stripes_scale_mod[i] = 1;
   }

   if (!menu)
      goto error;

   if (!menu_display_init_first_driver(video_is_threaded))
      goto error;

   video_driver_get_size(&width, &height);

   stripes = (stripes_handle_t*)calloc(1, sizeof(stripes_handle_t));

   if (!stripes)
      goto error;

   *userdata = stripes;

   stripes->selection_buf_old = (file_list_t*)calloc(1, sizeof(file_list_t));

   if (!stripes->selection_buf_old)
      goto error;

   stripes->categories_active_idx = 0;
   stripes->categories_active_idx_old = 0;
   stripes->x = 0;
   stripes->categories_x_pos = 0;
   stripes->textures_arrow_alpha = 0;
   stripes->depth = 1;
   stripes->old_depth = 1;
   stripes->alpha = 0;

   stripes->system_tab_end = 0;
   stripes->tabs[stripes->system_tab_end] = STRIPES_SYSTEM_TAB_MAIN;
   if (settings->bools.menu_content_show_settings && !settings->bools.kiosk_mode_enable)
      stripes->tabs[++stripes->system_tab_end] = STRIPES_SYSTEM_TAB_SETTINGS;
   if (settings->bools.menu_content_show_favorites)
      stripes->tabs[++stripes->system_tab_end] = STRIPES_SYSTEM_TAB_FAVORITES;
   if (settings->bools.menu_content_show_history)
      stripes->tabs[++stripes->system_tab_end] = STRIPES_SYSTEM_TAB_HISTORY;




   if (settings->bools.menu_content_show_music)
      stripes->tabs[++stripes->system_tab_end] = STRIPES_SYSTEM_TAB_MUSIC;
   menu_driver_ctl(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, ((void*)0));





   menu_display_set_width(width);
   menu_display_set_height(height);

   menu_display_allocate_white_texture();

   stripes->horizontal_list = (file_list_t*)calloc(1, sizeof(file_list_t));

   if (stripes->horizontal_list)
      stripes_init_horizontal_list(stripes);

   return menu;

error:
   if (menu)
      free(menu);

   if (stripes)
   {
      if (stripes->selection_buf_old)
         free(stripes->selection_buf_old);
      stripes->selection_buf_old = ((void*)0);
      if (stripes->horizontal_list)
      {
         stripes_free_list_nodes(stripes->horizontal_list, 0);
         file_list_free(stripes->horizontal_list);
      }
      stripes->horizontal_list = ((void*)0);
   }
   return ((void*)0);
}
