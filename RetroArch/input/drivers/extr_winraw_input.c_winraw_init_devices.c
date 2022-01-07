
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dwType; int hDevice; int hnd; int y; int x; } ;
typedef TYPE_1__ winraw_mouse_t ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_1__ RAWINPUTDEVICELIST ;
typedef TYPE_3__ POINT ;


 int GetCursorPos (TYPE_3__*) ;
 int GetLastError () ;
 scalar_t__ GetRawInputDeviceList (TYPE_1__*,scalar_t__*,int) ;
 int RARCH_ERR (char*,int ) ;
 scalar_t__ RIM_TYPEMOUSE ;
 scalar_t__ calloc (int,unsigned int) ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (scalar_t__) ;
 int winraw_log_mice_info (TYPE_1__*,unsigned int) ;

__attribute__((used)) static bool winraw_init_devices(winraw_mouse_t **mice, unsigned *mouse_cnt)
{
   UINT i;
   POINT crs_pos;
   winraw_mouse_t *mice_r = ((void*)0);
   unsigned mouse_cnt_r = 0;
   RAWINPUTDEVICELIST *devs = ((void*)0);
   UINT dev_cnt = 0;
   UINT r = GetRawInputDeviceList(
         ((void*)0), &dev_cnt, sizeof(RAWINPUTDEVICELIST));

   if (r == (UINT)-1)
   {
      RARCH_ERR("[WINRAW]: GetRawInputDeviceList failed with error %lu.\n", GetLastError());
      goto error;
   }

   devs = (RAWINPUTDEVICELIST*)malloc(dev_cnt * sizeof(RAWINPUTDEVICELIST));
   if (!devs)
      goto error;

   dev_cnt = GetRawInputDeviceList(devs, &dev_cnt, sizeof(RAWINPUTDEVICELIST));
   if (dev_cnt == (UINT)-1)
   {
      RARCH_ERR("[WINRAW]: GetRawInputDeviceList failed with error %lu.\n", GetLastError());
      goto error;
   }

   for (i = 0; i < dev_cnt; ++i)
      mouse_cnt_r += devs[i].dwType == RIM_TYPEMOUSE ? 1 : 0;

   if (mouse_cnt_r)
   {
      mice_r = (winraw_mouse_t*)calloc(1, mouse_cnt_r * sizeof(winraw_mouse_t));
      if (!mice_r)
         goto error;

      if (!GetCursorPos(&crs_pos))
         goto error;

      for (i = 0; i < mouse_cnt_r; ++i)
      {
         mice_r[i].x = crs_pos.x;
         mice_r[i].y = crs_pos.y;
      }
   }


   for (i = mouse_cnt_r = 0; i < dev_cnt; ++i)
   {
      if (devs[i].dwType == RIM_TYPEMOUSE)
         mice_r[mouse_cnt_r++].hnd = devs[i].hDevice;
   }

   winraw_log_mice_info(mice_r, mouse_cnt_r);
   free(devs);

   *mice = mice_r;
   *mouse_cnt = mouse_cnt_r;

   return 1;

error:
   free(devs);
   free(mice_r);
   *mice = ((void*)0);
   *mouse_cnt = 0;
   return 0;
}
