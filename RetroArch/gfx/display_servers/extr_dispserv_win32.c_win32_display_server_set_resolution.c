
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dispserv_win32_t ;
typedef int devmode ;
typedef int curDevmode ;
struct TYPE_4__ {int dmDisplayFrequency; unsigned int dmPelsWidth; unsigned int dmPelsHeight; int dmBitsPerPel; int dmFields; } ;
typedef int LONG ;
typedef TYPE_1__ DEVMODE ;


 int CDS_TEST ;



 int DM_BITSPERPEL ;
 int DM_DISPLAYFREQUENCY ;
 int DM_PELSHEIGHT ;
 int DM_PELSWIDTH ;
 scalar_t__ GetSystemMetrics (int ) ;
 int SM_CXSCREEN ;
 int SM_CYSCREEN ;
 int win32_change_display_settings (int *,TYPE_1__*,int ) ;
 int win32_get_video_output (TYPE_1__*,int,int) ;
 scalar_t__ win32_orig_height ;
 int win32_orig_refresh ;
 scalar_t__ win32_orig_width ;

__attribute__((used)) static bool win32_display_server_set_resolution(void *data,
      unsigned width, unsigned height, int int_hz, float hz, int center, int monitor_index, int xoffset)
{
   DEVMODE curDevmode;
   int iModeNum;
   int freq = int_hz;
   int depth = 0;
   dispserv_win32_t *serv = (dispserv_win32_t*)data;

   if (!serv)
      return 0;

   win32_get_video_output(&curDevmode, -1, sizeof(curDevmode));

   if (win32_orig_width == 0)
      win32_orig_width = GetSystemMetrics(SM_CXSCREEN);
   win32_orig_refresh = curDevmode.dmDisplayFrequency;
   if (win32_orig_height == 0)
      win32_orig_height = GetSystemMetrics(SM_CYSCREEN);


   if (width == curDevmode.dmPelsWidth)
      width = 0;
   if (width == 0)
      width = curDevmode.dmPelsWidth;
   if (height == 0)
      height = curDevmode.dmPelsHeight;
   if (depth == 0)
      depth = curDevmode.dmBitsPerPel;
   if (freq == 0)
      freq = curDevmode.dmDisplayFrequency;

   for (iModeNum = 0;; iModeNum++)
   {
      LONG res;
      DEVMODE devmode;

      if (!win32_get_video_output(&devmode, iModeNum, sizeof(devmode)))
         break;

      if (devmode.dmPelsWidth != width)
         continue;

      if (devmode.dmPelsHeight != height)
         continue;

      if (devmode.dmBitsPerPel != depth)
         continue;

      if (devmode.dmDisplayFrequency != freq)
         continue;

      devmode.dmFields |=
            DM_PELSWIDTH | DM_PELSHEIGHT | DM_BITSPERPEL | DM_DISPLAYFREQUENCY;
      res =
            win32_change_display_settings(((void*)0), &devmode, CDS_TEST);

      switch (res)
      {
      case 128:
         res = win32_change_display_settings(((void*)0), &devmode, 0);
         switch (res)
         {
            case 128:
               return 1;
            case 130:
               return 1;
            default:
               break;
         }
         break;
      case 129:
         break;
      default:
         break;
      }
   }

   return 1;
}
