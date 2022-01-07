
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {unsigned int width; unsigned int height; int fullscreen; } ;
typedef TYPE_3__ video_info_t ;
struct TYPE_26__ {int input_joypad_driver; int input_driver; } ;
struct TYPE_25__ {int video_windowed_fullscreen; } ;
struct TYPE_28__ {TYPE_2__ arrays; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_29__ {int* tex_coords; int* vert_coords; } ;
typedef TYPE_5__ overlay_t ;
typedef int input_driver_t ;
struct TYPE_33__ {int lpfnWndProc; } ;
struct TYPE_30__ {TYPE_3__ video_info; int cur_mon_id; TYPE_9__ windowClass; TYPE_5__* menu; } ;
typedef TYPE_6__ d3d8_video_t ;
struct TYPE_31__ {unsigned int right; unsigned int left; unsigned int bottom; unsigned int top; int member_0; } ;
struct TYPE_32__ {TYPE_7__ rcMonitor; } ;
typedef TYPE_7__ RECT ;
typedef TYPE_8__ MONITORINFOEX ;
typedef int HMONITOR ;
typedef int DWORD ;


 int RARCH_LOG (char*,...) ;
 int WndProcD3D ;
 scalar_t__ calloc (int,int) ;
 TYPE_4__* config_get_ptr () ;
 int d3d8_get_video_size (TYPE_6__*,unsigned int*,unsigned int*) ;
 int d3d8_init_singlepass (TYPE_6__*) ;
 int d3d8_initialize (TYPE_6__*,TYPE_3__*) ;
 int d3d_input_driver (int ,int ,int **,void**) ;
 unsigned int g_win32_resize_height ;
 unsigned int g_win32_resize_width ;
 int memset (TYPE_9__*,int ,int) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;
 int win32_monitor_info (TYPE_8__*,int *,int *) ;
 int win32_set_style (TYPE_8__*,int *,unsigned int*,unsigned int*,int ,int,TYPE_7__*,TYPE_7__*,int *) ;
 int win32_set_window (unsigned int*,unsigned int*,int ,int,TYPE_7__*) ;
 int win32_window_create (TYPE_6__*,int ,TYPE_7__*,unsigned int,unsigned int,int ) ;
 int win32_window_init (TYPE_9__*,int,int *) ;

__attribute__((used)) static bool d3d8_init_internal(d3d8_video_t *d3d,
      const video_info_t *info, input_driver_t **input,
      void **input_data)
{
   unsigned full_x = 0;
   unsigned full_y = 0;
   settings_t *settings = config_get_ptr();
   overlay_t *menu = (overlay_t*)calloc(1, sizeof(*menu));

   if (!menu)
      return 0;

   d3d->menu = menu;
   d3d->cur_mon_id = 0;
   d3d->menu->tex_coords[0] = 0;
   d3d->menu->tex_coords[1] = 0;
   d3d->menu->tex_coords[2] = 1;
   d3d->menu->tex_coords[3] = 1;
   d3d->menu->vert_coords[0] = 0;
   d3d->menu->vert_coords[1] = 1;
   d3d->menu->vert_coords[2] = 1;
   d3d->menu->vert_coords[3] = -1;
   d3d8_get_video_size(d3d, &full_x, &full_y);

   {
      unsigned new_width = info->fullscreen ? full_x : info->width;
      unsigned new_height = info->fullscreen ? full_y : info->height;
      video_driver_set_size(&new_width, &new_height);
   }
   if (!d3d8_init_singlepass(d3d))
      return 0;

   d3d->video_info = *info;
   if (!d3d8_initialize(d3d, &d3d->video_info))
      return 0;

   d3d_input_driver(settings->arrays.input_driver, settings->arrays.input_joypad_driver, input, input_data);

   RARCH_LOG("[D3D8]: Init complete.\n");
   return 1;
}
