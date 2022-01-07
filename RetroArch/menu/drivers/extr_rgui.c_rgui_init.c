
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct video_viewport {int full_height; int full_width; } ;
struct TYPE_12__ {int menu_rgui_extended_ascii; int menu_rgui_shadows; int menu_rgui_border_filler_enable; int menu_rgui_border_filler_thickness_enable; int menu_rgui_background_filler_thickness_enable; } ;
struct TYPE_11__ {scalar_t__ menu_rgui_particle_effect; int menu_rgui_aspect_ratio_lock; } ;
struct TYPE_13__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_14__ {char* menu_title; char* menu_sublabel; int aspect_update_pending; char* theme_preset_path; scalar_t__ particle_effect; int ignore_resize_events; int thumbnail_load_pending; int show_fs_thumbnail; int pointer; scalar_t__ thumbnail_load_trigger_time; scalar_t__ left_thumbnail_queue_size; scalar_t__ thumbnail_queue_size; int thumbnail_path_data; int window_height; int window_width; int last_height; int last_width; int extended_ascii_enable; int shadow_enable; int border_enable; int border_thickness; int bg_thickness; scalar_t__ scroll_y; int menu_aspect_ratio_lock; int content_video_settings; scalar_t__ widgets_supported; } ;
typedef TYPE_4__ rgui_t ;
typedef int menu_input_pointer_t ;
typedef void menu_handle_t ;
struct TYPE_15__ {int height; int width; } ;


 int FONT_HEIGHT_STRIDE ;
 int MENU_ENTRIES_CTL_SET_START ;
 scalar_t__ RGUI_PARTICLE_EFFECT_NONE ;
 scalar_t__ calloc (int,int) ;
 TYPE_3__* config_get_ptr () ;
 int free (void*) ;
 int fs_thumbnail ;
 int memset (int *,int ,int) ;
 int menu_display_allocate_white_texture () ;
 int menu_display_init_first_driver (int) ;
 int menu_display_set_header_height (unsigned int) ;
 int menu_entries_ctl (int ,size_t*) ;
 int menu_thumbnail_path_init () ;
 scalar_t__ menu_widgets_ready () ;
 int mini_left_thumbnail ;
 int mini_thumbnail ;
 int prepare_rgui_colors (TYPE_4__*,TYPE_3__*) ;
 int rgui_background_free () ;
 TYPE_7__ rgui_frame_buf ;
 int rgui_framebuffer_free () ;
 int rgui_get_video_config (int *) ;
 int rgui_init_font_lut () ;
 int rgui_init_particle_effect (TYPE_4__*) ;
 int rgui_set_aspect_ratio (TYPE_4__*,int) ;
 int rgui_set_blit_functions (int ,int ) ;
 int rgui_set_pixel_format_function () ;
 int rgui_thumbnail_free (int *) ;
 int video_driver_get_viewport_info (struct video_viewport*) ;

__attribute__((used)) static void *rgui_init(void **userdata, bool video_is_threaded)
{
   unsigned new_font_height;
   size_t start;
   struct video_viewport vp;
   rgui_t *rgui = ((void*)0);
   settings_t *settings = config_get_ptr();
   menu_handle_t *menu = (menu_handle_t*)calloc(1, sizeof(*menu));

   if (!menu)
      return ((void*)0);

   rgui = (rgui_t*)calloc(1, sizeof(rgui_t));

   if (!rgui)
      goto error;

   *userdata = rgui;
   rgui->menu_title[0] = '\0';
   rgui->menu_sublabel[0] = '\0';


   rgui_set_pixel_format_function();


   rgui_get_video_config(&rgui->content_video_settings);




   rgui->menu_aspect_ratio_lock = settings->uints.menu_rgui_aspect_ratio_lock;
   rgui->aspect_update_pending = 0;
   if (!rgui_set_aspect_ratio(rgui, 0))
      goto error;


   new_font_height = FONT_HEIGHT_STRIDE * 2;
   menu_display_set_header_height(new_font_height);


   rgui->theme_preset_path[0] = '\0';
   prepare_rgui_colors(rgui, settings);

   start = 0;
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &start);
   rgui->scroll_y = 0;

   rgui_init_font_lut();

   rgui->bg_thickness = settings->bools.menu_rgui_background_filler_thickness_enable;
   rgui->border_thickness = settings->bools.menu_rgui_border_filler_thickness_enable;
   rgui->border_enable = settings->bools.menu_rgui_border_filler_enable;
   rgui->shadow_enable = settings->bools.menu_rgui_shadows;
   rgui->particle_effect = settings->uints.menu_rgui_particle_effect;
   rgui->extended_ascii_enable = settings->bools.menu_rgui_extended_ascii;

   rgui->last_width = rgui_frame_buf.width;
   rgui->last_height = rgui_frame_buf.height;


   video_driver_get_viewport_info(&vp);
   rgui->window_width = vp.full_width;
   rgui->window_height = vp.full_height;
   rgui->ignore_resize_events = 0;


   if (rgui->particle_effect != RGUI_PARTICLE_EFFECT_NONE)
      rgui_init_particle_effect(rgui);


   rgui_set_blit_functions(
         settings->bools.menu_rgui_shadows, settings->bools.menu_rgui_extended_ascii);

   rgui->thumbnail_path_data = menu_thumbnail_path_init();
   if (!rgui->thumbnail_path_data)
      goto error;

   rgui->thumbnail_queue_size = 0;
   rgui->left_thumbnail_queue_size = 0;
   rgui->thumbnail_load_pending = 0;
   rgui->thumbnail_load_trigger_time = 0;

   rgui->show_fs_thumbnail = 0;




   memset(&rgui->pointer, 0, sizeof(menu_input_pointer_t));

   return menu;

error:
   rgui_framebuffer_free();
   rgui_background_free();
   rgui_thumbnail_free(&fs_thumbnail);
   rgui_thumbnail_free(&mini_thumbnail);
   rgui_thumbnail_free(&mini_left_thumbnail);
   if (menu)
      free(menu);
   return ((void*)0);
}
