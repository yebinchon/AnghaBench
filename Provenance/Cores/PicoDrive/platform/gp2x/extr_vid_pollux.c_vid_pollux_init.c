
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_fix_screeninfo {char* id; int smem_start; } ;


 int FBIOGET_FSCREENINFO ;
 int FB_BUF_COUNT ;
 int FB_MEM_SIZE ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int exit (int) ;
 int* fb_paddr ;
 scalar_t__ fb_work_buf ;
 scalar_t__ fbdev ;
 char* g_screen_ptr ;
 char** gp2x_screens ;
 int gp2x_video_RGB_setscaling ;
 int gp2x_video_RGB_setscaling_ ;
 int gp2x_video_changemode_ll ;
 int gp2x_video_changemode_ll_ ;
 int gp2x_video_flip ;
 int gp2x_video_flip2 ;
 int gp2x_video_flip2_ ;
 int gp2x_video_flip_ ;
 int gp2x_video_setpalette ;
 int gp2x_video_setpalette_ ;
 int gp2x_video_wait_vsync ;
 int gp2x_video_wait_vsync_ ;
 int ioctl (scalar_t__,int ,struct fb_fix_screeninfo*) ;
 int memdev ;
 int memset (char*,int ,int ) ;
 char* mmap (int ,int ,int,int ,int ,int) ;
 scalar_t__ open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,char*,int) ;

void vid_pollux_init(void)
{
 struct fb_fix_screeninfo fbfix;
 int i, ret;

 fbdev = open("/dev/fb0", O_RDWR);
 if (fbdev < 0) {
  perror("can't open fbdev");
  exit(1);
 }

 ret = ioctl(fbdev, FBIOGET_FSCREENINFO, &fbfix);
 if (ret == -1) {
  perror("ioctl(fbdev) failed");
  exit(1);
 }

 printf("framebuffer: \"%s\" @ %08lx\n", fbfix.id, fbfix.smem_start);
 fb_paddr[0] = fbfix.smem_start;

 gp2x_screens[0] = mmap(0, FB_MEM_SIZE, PROT_READ|PROT_WRITE,
   MAP_SHARED, memdev, fb_paddr[0]);
 if (gp2x_screens[0] == MAP_FAILED)
 {
  perror("mmap(gp2x_screens) failed");
  exit(1);
 }
 memset(gp2x_screens[0], 0, FB_MEM_SIZE);

 printf("  %p -> %08x\n", gp2x_screens[0], fb_paddr[0]);
 for (i = 1; i < FB_BUF_COUNT; i++)
 {
  fb_paddr[i] = fb_paddr[i-1] + 320*240*2;
  gp2x_screens[i] = (char *)gp2x_screens[i-1] + 320*240*2;
  printf("  %p -> %08x\n", gp2x_screens[i], fb_paddr[i]);
 }
 fb_work_buf = 0;
 g_screen_ptr = gp2x_screens[0];

 gp2x_video_flip = gp2x_video_flip_;
 gp2x_video_flip2 = gp2x_video_flip2_;
 gp2x_video_changemode_ll = gp2x_video_changemode_ll_;
 gp2x_video_setpalette = gp2x_video_setpalette_;
 gp2x_video_RGB_setscaling = gp2x_video_RGB_setscaling_;
 gp2x_video_wait_vsync = gp2x_video_wait_vsync_;
}
