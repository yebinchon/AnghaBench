
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum rotation { ____Placeholder_rotation } rotation ;
typedef int dm ;
struct TYPE_4__ {int dmPelsWidth; int dmPelsHeight; int dmDisplayOrientation; int member_0; } ;
typedef TYPE_1__ DEVMODE ;


 int DMDO_180 ;
 int DMDO_270 ;
 int DMDO_90 ;
 int DMDO_DEFAULT ;




 int win32_change_display_settings (int *,TYPE_1__*,int ) ;
 int win32_get_video_output (TYPE_1__*,int,int) ;

void win32_display_server_set_screen_orientation(enum rotation rotation)
{
   DEVMODE dm = {0};

   win32_get_video_output(&dm, -1, sizeof(dm));

   switch (rotation)
   {
      case 129:
      default:
      {
         int width = dm.dmPelsWidth;

         if ((dm.dmDisplayOrientation == DMDO_90 || dm.dmDisplayOrientation == DMDO_270) && width != dm.dmPelsHeight)
         {

            dm.dmPelsWidth = dm.dmPelsHeight;
            dm.dmPelsHeight = width;
         }

         dm.dmDisplayOrientation = DMDO_DEFAULT;
         break;
      }
      case 128:
      {
         int width = dm.dmPelsWidth;

         if ((dm.dmDisplayOrientation == DMDO_DEFAULT || dm.dmDisplayOrientation == DMDO_180) && width != dm.dmPelsHeight)
         {

            dm.dmPelsWidth = dm.dmPelsHeight;
            dm.dmPelsHeight = width;
         }

         dm.dmDisplayOrientation = DMDO_270;
         break;
      }
      case 131:
      {
         int width = dm.dmPelsWidth;

         if ((dm.dmDisplayOrientation == DMDO_90 || dm.dmDisplayOrientation == DMDO_270) && width != dm.dmPelsHeight)
         {

            dm.dmPelsWidth = dm.dmPelsHeight;
            dm.dmPelsHeight = width;
         }

         dm.dmDisplayOrientation = DMDO_180;
         break;
      }
      case 130:
      {
         int width = dm.dmPelsWidth;

         if ((dm.dmDisplayOrientation == DMDO_DEFAULT || dm.dmDisplayOrientation == DMDO_180) && width != dm.dmPelsHeight)
         {

            dm.dmPelsWidth = dm.dmPelsHeight;
            dm.dmPelsHeight = width;
         }

         dm.dmDisplayOrientation = DMDO_90;
         break;
      }
   }

   win32_change_display_settings(((void*)0), &dm, 0);
}
