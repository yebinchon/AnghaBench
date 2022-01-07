
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fd; scalar_t__ sync; } ;
typedef TYPE_1__ omapfb_data_t ;


 int OMAPFB_WAITFORGO ;
 int ioctl (int ,int ) ;
 scalar_t__ omapfb_enable_plane (TYPE_1__*) ;
 scalar_t__ omapfb_setup_pages (TYPE_1__*) ;
 scalar_t__ omapfb_setup_plane (TYPE_1__*,int,int) ;
 scalar_t__ omapfb_setup_screeninfo (TYPE_1__*,int,int) ;

__attribute__((used)) static int omapfb_set_mode(omapfb_data_t *pdata, int width, int height)
{
   if (pdata->sync)
      ioctl(pdata->fd, OMAPFB_WAITFORGO);

   if (omapfb_setup_plane(pdata, width, height) != 0)
      return -1;

   if (omapfb_setup_screeninfo(pdata, width, height) != 0 ||
         omapfb_setup_pages(pdata) != 0 ||
         omapfb_enable_plane(pdata) != 0)
      return -1;

   return 0;
}
