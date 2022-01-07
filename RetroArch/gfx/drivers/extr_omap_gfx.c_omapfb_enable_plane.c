
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_plane_info {int enabled; int member_0; } ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ omapfb_data_t ;


 int OMAPFB_QUERY_PLANE ;
 int OMAPFB_SETUP_PLANE ;
 int RARCH_ERR (char*) ;
 scalar_t__ ioctl (int ,int ,struct omapfb_plane_info*) ;

__attribute__((used)) static int omapfb_enable_plane(omapfb_data_t *pdata)
{
   struct omapfb_plane_info pi = {0};

   if (ioctl(pdata->fd, OMAPFB_QUERY_PLANE, &pi) != 0)
   {
      RARCH_ERR("[video_omap]: enable plane (query) failed\n");
      return -1;
   }

   pi.enabled = 1;

   if (ioctl(pdata->fd, OMAPFB_SETUP_PLANE, &pi) != 0)
   {
      RARCH_ERR("[video_omap]: enable plane failed\n");
      return -1;
   }

   return 0;
}
