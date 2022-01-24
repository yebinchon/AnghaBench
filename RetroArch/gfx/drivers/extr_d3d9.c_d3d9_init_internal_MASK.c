#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_9__ ;
typedef  struct TYPE_40__   TYPE_8__ ;
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_19__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
struct TYPE_36__ {unsigned int width; unsigned int height; int /*<<< orphan*/  fullscreen; } ;
typedef  TYPE_4__ video_info_t ;
typedef  int /*<<< orphan*/  version_str ;
struct TYPE_34__ {int /*<<< orphan*/  input_joypad_driver; } ;
struct TYPE_33__ {int video_windowed_fullscreen; } ;
struct TYPE_37__ {TYPE_2__ arrays; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_38__ {int* tex_coords; int* vert_coords; } ;
typedef  TYPE_6__ overlay_t ;
typedef  int /*<<< orphan*/  input_driver_t ;
typedef  enum rarch_shader_type { ____Placeholder_rarch_shader_type } rarch_shader_type ;
struct TYPE_31__ {int /*<<< orphan*/  lpfnWndProc; } ;
struct TYPE_39__ {TYPE_4__ video_info; int /*<<< orphan*/  cur_mon_id; TYPE_11__ windowClass; TYPE_6__* menu; } ;
typedef  TYPE_7__ d3d9_video_t ;
struct TYPE_40__ {unsigned int right; unsigned int left; unsigned int bottom; unsigned int top; int /*<<< orphan*/  member_0; } ;
struct TYPE_41__ {TYPE_8__ rcMonitor; } ;
struct TYPE_35__ {int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_32__ {int /*<<< orphan*/  get_flags; } ;
struct TYPE_30__ {int /*<<< orphan*/  Description; TYPE_3__ DriverVersion; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_8__ RECT ;
typedef  TYPE_9__ MONITORINFOEX ;
typedef  int /*<<< orphan*/  HMONITOR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_10__ D3DADAPTER_IDENTIFIER9 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  WndProcD3D ; 
 scalar_t__ FUNC4 (int,int) ; 
 TYPE_5__* FUNC5 () ; 
 TYPE_19__ d3d9_fake_context ; 
 int /*<<< orphan*/  d3d9_get_flags ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,void**) ; 
 int /*<<< orphan*/  g_pD3D9 ; 
 unsigned int g_win32_resize_height ; 
 unsigned int g_win32_resize_width ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int*,unsigned int*) ; 
 int FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_9__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_9__*,int /*<<< orphan*/ *,unsigned int*,unsigned int*,int /*<<< orphan*/ ,int,TYPE_8__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (unsigned int*,unsigned int*,int /*<<< orphan*/ ,int,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_8__*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_11__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC24(d3d9_video_t *d3d,
      const video_info_t *info, input_driver_t **input,
      void **input_data)
{
#ifdef HAVE_MONITOR
   bool windowed_full;
   RECT mon_rect;
   MONITORINFOEX current_mon;
   HMONITOR hm_to_use;
#endif
#ifdef HAVE_WINDOW
   DWORD style;
   unsigned win_width        = 0;
   unsigned win_height       = 0;
   RECT rect                 = {0};
#endif
   unsigned full_x           = 0;
   unsigned full_y           = 0;
   settings_t    *settings   = FUNC5();
   overlay_t *menu           = (overlay_t*)FUNC4(1, sizeof(*menu));

   if (!menu)
      return false;

   d3d->menu                 = menu;
   d3d->cur_mon_id           = 0;
   d3d->menu->tex_coords[0]  = 0;
   d3d->menu->tex_coords[1]  = 0;
   d3d->menu->tex_coords[2]  = 1;
   d3d->menu->tex_coords[3]  = 1;
   d3d->menu->vert_coords[0] = 0;
   d3d->menu->vert_coords[1] = 1;
   d3d->menu->vert_coords[2] = 1;
   d3d->menu->vert_coords[3] = -1;

#ifdef HAVE_WINDOW
   memset(&d3d->windowClass, 0, sizeof(d3d->windowClass));
   d3d->windowClass.lpfnWndProc = WndProcD3D;
   win32_window_init(&d3d->windowClass, true, NULL);
#endif

#ifdef HAVE_MONITOR
   win32_monitor_info(&current_mon, &hm_to_use, &d3d->cur_mon_id);

   mon_rect              = current_mon.rcMonitor;
   g_win32_resize_width  = info->width;
   g_win32_resize_height = info->height;

   windowed_full         = settings->bools.video_windowed_fullscreen;

   full_x                = (windowed_full || info->width  == 0) ?
      (mon_rect.right  - mon_rect.left) : info->width;
   full_y                = (windowed_full || info->height == 0) ?
      (mon_rect.bottom - mon_rect.top)  : info->height;

   RARCH_LOG("[D3D9]: Monitor size: %dx%d.\n",
         (int)(mon_rect.right  - mon_rect.left),
         (int)(mon_rect.bottom - mon_rect.top));
#else
   {
      FUNC6(d3d, &full_x, &full_y);
   }
#endif
   {
      unsigned new_width  = info->fullscreen ? full_x : info->width;
      unsigned new_height = info->fullscreen ? full_y : info->height;
      FUNC17(&new_width, &new_height);
   }

#ifdef HAVE_WINDOW
   video_driver_get_size(&win_width, &win_height);

   win32_set_style(&current_mon, &hm_to_use, &win_width, &win_height,
         info->fullscreen, windowed_full, &rect, &mon_rect, &style);

   win32_window_create(d3d, style, &mon_rect, win_width,
         win_height, info->fullscreen);

   win32_set_window(&win_width, &win_height, info->fullscreen,
      windowed_full, &rect);
#endif

   d3d->video_info = *info;

   if (!FUNC7(d3d, &d3d->video_info))
      return false;

   {

      d3d9_fake_context.get_flags = d3d9_get_flags;
      FUNC13(&d3d9_fake_context); 
#if defined(HAVE_CG) || defined(HAVE_HLSL)
      {
         const char *shader_preset   = retroarch_get_shader_preset();
         enum rarch_shader_type type = video_shader_parse_type(shader_preset);

         d3d9_set_shader(d3d, type, shader_preset);
      }
#endif
   }

   FUNC9(settings->arrays.input_joypad_driver,
      settings->arrays.input_joypad_driver, input, input_data);

   {
      char version_str[128];
      D3DADAPTER_IDENTIFIER9 ident = {0};

      FUNC1(g_pD3D9, 0, 0, &ident);

      version_str[0] = '\0';

      FUNC12(version_str, sizeof(version_str), "%u.%u.%u.%u", FUNC0(ident.DriverVersion.HighPart), FUNC2(ident.DriverVersion.HighPart), FUNC0(ident.DriverVersion.LowPart), FUNC2(ident.DriverVersion.LowPart));

      FUNC3("[D3D9]: Using GPU: %s\n", ident.Description);
      FUNC3("[D3D9]: GPU API Version: %s\n", version_str);

      FUNC16(ident.Description);
      FUNC15(version_str);
   }

   FUNC3("[D3D9]: Init complete.\n");
   return true;
}