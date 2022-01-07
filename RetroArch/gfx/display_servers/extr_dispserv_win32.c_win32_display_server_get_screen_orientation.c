
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rotation { ____Placeholder_rotation } rotation ;
typedef int dm ;
struct TYPE_3__ {int dmDisplayOrientation; int member_0; } ;
typedef TYPE_1__ DEVMODE ;






 int ORIENTATION_FLIPPED ;
 int ORIENTATION_FLIPPED_ROTATED ;
 int ORIENTATION_NORMAL ;
 int ORIENTATION_VERTICAL ;
 int win32_get_video_output (TYPE_1__*,int,int) ;

enum rotation win32_display_server_get_screen_orientation(void)
{
   DEVMODE dm = {0};
   enum rotation rotation;

   win32_get_video_output(&dm, -1, sizeof(dm));

   switch (dm.dmDisplayOrientation)
   {
      case 128:
      default:
         rotation = ORIENTATION_NORMAL;
         break;
      case 129:
         rotation = ORIENTATION_FLIPPED_ROTATED;
         break;
      case 131:
         rotation = ORIENTATION_FLIPPED;
         break;
      case 130:
         rotation = ORIENTATION_VERTICAL;
         break;
   }

   return rotation;
}
