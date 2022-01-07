
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_19__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct TYPE_36__ {unsigned int width; unsigned int height; int fullscreen; } ;
typedef TYPE_4__ video_info_t ;
typedef int version_str ;
struct TYPE_34__ {int input_joypad_driver; } ;
struct TYPE_33__ {int video_windowed_fullscreen; } ;
struct TYPE_37__ {TYPE_2__ arrays; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_38__ {int* tex_coords; int* vert_coords; } ;
typedef TYPE_6__ overlay_t ;
typedef int input_driver_t ;
typedef enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
struct TYPE_31__ {int lpfnWndProc; } ;
struct TYPE_39__ {TYPE_4__ video_info; int cur_mon_id; TYPE_11__ windowClass; TYPE_6__* menu; } ;
typedef TYPE_7__ d3d9_video_t ;
struct TYPE_40__ {unsigned int right; unsigned int left; unsigned int bottom; unsigned int top; int member_0; } ;
struct TYPE_41__ {TYPE_8__ rcMonitor; } ;
struct TYPE_35__ {int LowPart; int HighPart; } ;
struct TYPE_32__ {int get_flags; } ;
struct TYPE_30__ {int Description; TYPE_3__ DriverVersion; int member_0; } ;
typedef TYPE_8__ RECT ;
typedef TYPE_9__ MONITORINFOEX ;
typedef int HMONITOR ;
typedef int DWORD ;
typedef TYPE_10__ D3DADAPTER_IDENTIFIER9 ;


 int HIWORD (int ) ;
 int IDirect3D9_GetAdapterIdentifier (int ,int ,int ,TYPE_10__*) ;
 int LOWORD (int ) ;
 int RARCH_LOG (char*,...) ;
 int WndProcD3D ;
 scalar_t__ calloc (int,int) ;
 TYPE_5__* config_get_ptr () ;
 TYPE_19__ d3d9_fake_context ;
 int d3d9_get_flags ;
 int d3d9_get_video_size (TYPE_7__*,unsigned int*,unsigned int*) ;
 int d3d9_initialize (TYPE_7__*,TYPE_4__*) ;
 int d3d9_set_shader (TYPE_7__*,int,char const*) ;
 int d3d_input_driver (int ,int ,int **,void**) ;
 int g_pD3D9 ;
 unsigned int g_win32_resize_height ;
 unsigned int g_win32_resize_width ;
 int memset (TYPE_11__*,int ,int) ;
 char* retroarch_get_shader_preset () ;
 int snprintf (char*,int,char*,int,int,int,int) ;
 int video_context_driver_set (TYPE_19__*) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int video_driver_set_gpu_api_version_string (char*) ;
 int video_driver_set_gpu_device_string (int ) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;
 int video_shader_parse_type (char const*) ;
 int win32_monitor_info (TYPE_9__*,int *,int *) ;
 int win32_set_style (TYPE_9__*,int *,unsigned int*,unsigned int*,int ,int,TYPE_8__*,TYPE_8__*,int *) ;
 int win32_set_window (unsigned int*,unsigned int*,int ,int,TYPE_8__*) ;
 int win32_window_create (TYPE_7__*,int ,TYPE_8__*,unsigned int,unsigned int,int ) ;
 int win32_window_init (TYPE_11__*,int,int *) ;

__attribute__((used)) static bool d3d9_init_internal(d3d9_video_t *d3d,
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
   {
      d3d9_get_video_size(d3d, &full_x, &full_y);
   }

   {
      unsigned new_width = info->fullscreen ? full_x : info->width;
      unsigned new_height = info->fullscreen ? full_y : info->height;
      video_driver_set_size(&new_width, &new_height);
   }
   d3d->video_info = *info;

   if (!d3d9_initialize(d3d, &d3d->video_info))
      return 0;

   {

      d3d9_fake_context.get_flags = d3d9_get_flags;
      video_context_driver_set(&d3d9_fake_context);
   }

   d3d_input_driver(settings->arrays.input_joypad_driver,
      settings->arrays.input_joypad_driver, input, input_data);

   {
      char version_str[128];
      D3DADAPTER_IDENTIFIER9 ident = {0};

      IDirect3D9_GetAdapterIdentifier(g_pD3D9, 0, 0, &ident);

      version_str[0] = '\0';

      snprintf(version_str, sizeof(version_str), "%u.%u.%u.%u", HIWORD(ident.DriverVersion.HighPart), LOWORD(ident.DriverVersion.HighPart), HIWORD(ident.DriverVersion.LowPart), LOWORD(ident.DriverVersion.LowPart));

      RARCH_LOG("[D3D9]: Using GPU: %s\n", ident.Description);
      RARCH_LOG("[D3D9]: GPU API Version: %s\n", version_str);

      video_driver_set_gpu_device_string(ident.Description);
      video_driver_set_gpu_api_version_string(version_str);
   }

   RARCH_LOG("[D3D9]: Init complete.\n");
   return 1;
}
