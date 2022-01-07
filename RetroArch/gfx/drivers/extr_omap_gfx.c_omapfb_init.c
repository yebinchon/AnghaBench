
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int video_vsync; } ;
struct TYPE_8__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {char const* fbname; int fd; unsigned int bpp; int num_pages; int sync; } ;
typedef TYPE_3__ omapfb_data_t ;


 int O_RDWR ;
 int RARCH_ERR (char*) ;
 int close (int) ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ omapfb_detect_screen (TYPE_3__*) ;
 char* omapfb_get_fb_device () ;
 int open (char const*,int ) ;

__attribute__((used)) static int omapfb_init(omapfb_data_t *pdata, unsigned bpp)
{
   const char *fbname = omapfb_get_fb_device();
   int fd = open(fbname, O_RDWR);
   settings_t *settings = config_get_ptr();

   if (fd == -1)
   {
      RARCH_ERR("[video_omap]: can't open framebuffer device\n");
      return -1;
   }

   pdata->fbname = fbname;
   pdata->fd = fd;

   if (omapfb_detect_screen(pdata))
   {
      close(fd);

      pdata->fbname = ((void*)0);
      pdata->fd = -1;

      return -1;
   }


   pdata->bpp = bpp;
   pdata->num_pages = 3;
   pdata->sync = settings->bools.video_vsync;

   return 0;
}
