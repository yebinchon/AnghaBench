
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* selection_buf_old; int depth; int old_depth; size_t system_tab_end; void* horizontal_list; int thumbnail_path_data; int * tabs; scalar_t__ alpha; scalar_t__ textures_arrow_alpha; scalar_t__ categories_x_pos; scalar_t__ x; scalar_t__ categories_active_idx_old; scalar_t__ categories_active_idx; } ;
typedef TYPE_3__ xmb_handle_t ;
struct TYPE_9__ {int kiosk_mode_enable; scalar_t__ menu_content_show_add; scalar_t__ menu_content_show_netplay; scalar_t__ menu_content_show_video; scalar_t__ menu_content_show_music; scalar_t__ menu_content_show_images; scalar_t__ menu_content_show_history; scalar_t__ menu_content_show_favorites; scalar_t__ menu_content_show_settings; } ;
struct TYPE_8__ {float menu_scale_factor; } ;
struct TYPE_11__ {TYPE_2__ bools; TYPE_1__ floats; } ;
typedef TYPE_4__ settings_t ;
typedef void menu_handle_t ;
typedef void file_list_t ;


 int RARCH_MENU_CTL_UNSET_PREVENT_POPULATE ;
 int XMB_SYSTEM_TAB_ADD ;
 int XMB_SYSTEM_TAB_FAVORITES ;
 int XMB_SYSTEM_TAB_HISTORY ;
 int XMB_SYSTEM_TAB_IMAGES ;
 int XMB_SYSTEM_TAB_MAIN ;
 int XMB_SYSTEM_TAB_MUSIC ;
 int XMB_SYSTEM_TAB_NETPLAY ;
 int XMB_SYSTEM_TAB_SETTINGS ;
 int XMB_SYSTEM_TAB_VIDEO ;
 scalar_t__ calloc (int,int) ;
 TYPE_4__* config_get_ptr () ;
 int file_list_free (void*) ;
 int free (void*) ;
 int menu_display_allocate_white_texture () ;
 int menu_display_init_first_driver (int) ;
 int menu_display_set_height (unsigned int) ;
 int menu_display_set_width (unsigned int) ;
 int menu_driver_ctl (int ,int *) ;
 int menu_thumbnail_path_init () ;
 double pow (float,double) ;
 int* scale_mod ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int xmb_free_list_nodes (void*,int) ;
 int xmb_init_horizontal_list (TYPE_3__*) ;
 int xmb_init_ribbon (TYPE_3__*) ;

__attribute__((used)) static void *xmb_init(void **userdata, bool video_is_threaded)
{
   unsigned width, height;
   int i;
   xmb_handle_t *xmb = ((void*)0);
   settings_t *settings = config_get_ptr();
   menu_handle_t *menu = (menu_handle_t*)calloc(1, sizeof(*menu));
   float scale_value = settings->floats.menu_scale_factor * 100.0f;





   if (scale_value < 100)
   {

      scale_mod[0] = -0.03 * scale_value + 4.083;

      scale_mod[1] = -0.03 * scale_value + 3.95;

      scale_mod[2] = -0.02 * scale_value + 3.033;

      scale_mod[3] = -0.014 * scale_value + 2.416;

      scale_mod[4] = -0.03 * scale_value + 3.916;

      scale_mod[5] = -0.06 * scale_value + 6.933;

      scale_mod[6] = -0.028 * scale_value + 3.866;

      scale_mod[7] = 134.179 * pow(scale_value, -1.0778);

      for (i = 0; i < 8; i++)
         if (scale_mod[i] < 1)
            scale_mod[i] = 1;
   }

   if (!menu)
      return ((void*)0);

   if (!menu_display_init_first_driver(video_is_threaded))
   {
      free(menu);
      return ((void*)0);
   }

   video_driver_get_size(&width, &height);

   xmb = (xmb_handle_t*)calloc(1, sizeof(xmb_handle_t));

   if (!xmb)
   {
      free(menu);
      return ((void*)0);
   }

   *userdata = xmb;

   xmb->selection_buf_old = (file_list_t*)calloc(1, sizeof(file_list_t));

   if (!xmb->selection_buf_old)
      goto error;

   xmb->categories_active_idx = 0;
   xmb->categories_active_idx_old = 0;
   xmb->x = 0;
   xmb->categories_x_pos = 0;
   xmb->textures_arrow_alpha = 0;
   xmb->depth = 1;
   xmb->old_depth = 1;
   xmb->alpha = 0;

   xmb->system_tab_end = 0;
   xmb->tabs[xmb->system_tab_end] = XMB_SYSTEM_TAB_MAIN;
   if (settings->bools.menu_content_show_settings && !settings->bools.kiosk_mode_enable)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_SETTINGS;
   if (settings->bools.menu_content_show_favorites)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_FAVORITES;
   if (settings->bools.menu_content_show_history)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_HISTORY;




   if (settings->bools.menu_content_show_music)
      xmb->tabs[++xmb->system_tab_end] = XMB_SYSTEM_TAB_MUSIC;
   menu_driver_ctl(RARCH_MENU_CTL_UNSET_PREVENT_POPULATE, ((void*)0));





   menu_display_set_width(width);
   menu_display_set_height(height);

   menu_display_allocate_white_texture();

   xmb->horizontal_list = (file_list_t*)calloc(1, sizeof(file_list_t));

   if (xmb->horizontal_list)
      xmb_init_horizontal_list(xmb);

   xmb_init_ribbon(xmb);

   xmb->thumbnail_path_data = menu_thumbnail_path_init();
   if (!xmb->thumbnail_path_data)
      goto error;

   return menu;

error:
   free(menu);

   if (xmb->selection_buf_old)
      free(xmb->selection_buf_old);
   xmb->selection_buf_old = ((void*)0);
   if (xmb->horizontal_list)
   {
      xmb_free_list_nodes(xmb->horizontal_list, 0);
      file_list_free(xmb->horizontal_list);
   }
   xmb->horizontal_list = ((void*)0);
   return ((void*)0);
}
