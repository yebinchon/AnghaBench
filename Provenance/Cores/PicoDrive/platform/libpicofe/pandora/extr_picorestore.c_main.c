
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_plane_info {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;
struct omapfb_mem_info {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;
struct fb_var_screeninfo {scalar_t__ yoffset; scalar_t__ size; scalar_t__ enabled; } ;


 int FBIOGET_VSCREENINFO ;
 int FBIOPAN_DISPLAY ;
 int KDSETMODE ;
 struct omapfb_plane_info* KD_TEXT ;
 int OMAPFB_QUERY_MEM ;
 int OMAPFB_QUERY_PLANE ;
 int OMAPFB_SETUP_MEM ;
 int OMAPFB_SETUP_PLANE ;
 int O_RDWR ;
 int close (int) ;
 int ioctl (int,int ,struct omapfb_plane_info*) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*) ;

int main()
{
 struct fb_var_screeninfo fbvar;
 struct omapfb_plane_info pi;
 struct omapfb_mem_info mi;
 int ret, fbdev, kbdfd;

 fbdev = open("/dev/fb0", O_RDWR);
 if (fbdev == -1) {
  perror("open fb0");
  goto end_fb0;
 }

 ret = ioctl(fbdev, FBIOGET_VSCREENINFO, &fbvar);
 if (ret == -1) {
  perror("FBIOGET_VSCREENINFO ioctl");
  goto end_fb0;
 }

 if (fbvar.yoffset != 0) {
  printf("fixing yoffset.. ");
  fbvar.yoffset = 0;
  ret = ioctl(fbdev, FBIOPAN_DISPLAY, &fbvar);
  if (ret < 0)
   perror("ioctl FBIOPAN_DISPLAY");
  else
   printf("ok\n");
 }

end_fb0:
 if (fbdev >= 0)
  close(fbdev);

 fbdev = open("/dev/fb1", O_RDWR);
 if (fbdev == -1) {
  perror("open fb1");
  goto end_fb1;
 }

 ret = ioctl(fbdev, OMAPFB_QUERY_PLANE, &pi);
 ret |= ioctl(fbdev, OMAPFB_QUERY_MEM, &mi);
 if (ret != 0)
  perror("QUERY_*");

 pi.enabled = 0;
 ret = ioctl(fbdev, OMAPFB_SETUP_PLANE, &pi);
 if (ret != 0)
  perror("SETUP_PLANE");

 mi.size = 0;
 ret = ioctl(fbdev, OMAPFB_SETUP_MEM, &mi);
 if (ret != 0)
  perror("SETUP_MEM");

end_fb1:
 if (fbdev >= 0)
  close(fbdev);

 kbdfd = open("/dev/tty", O_RDWR);
 if (kbdfd == -1) {
  perror("open /dev/tty");
  return 1;
 }

 if (ioctl(kbdfd, KDSETMODE, KD_TEXT) == -1)
  perror("KDSETMODE KD_TEXT");

 close(kbdfd);

 return 0;
}
