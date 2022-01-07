
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct modeset_buf {int map; scalar_t__ size; scalar_t__ handle; scalar_t__ stride; int fb_id; int pixel_format; int height; int width; } ;
struct drm_mode_map_dumb {int bpp; int depth; int offset; scalar_t__ handle; scalar_t__ size; scalar_t__ pitch; int fb_id; int height; int width; scalar_t__ flags; int member_0; } ;
struct drm_mode_fb_cmd {int bpp; int depth; int offset; scalar_t__ handle; scalar_t__ size; scalar_t__ pitch; int fb_id; int height; int width; scalar_t__ flags; int member_0; } ;
struct drm_mode_create_dumb {int bpp; int depth; int offset; scalar_t__ handle; scalar_t__ size; scalar_t__ pitch; int fb_id; int height; int width; scalar_t__ flags; int member_0; } ;
struct TYPE_2__ {int fd; } ;


 int DRM_IOCTL_MODE_ADDFB ;
 int DRM_IOCTL_MODE_CREATE_DUMB ;
 int DRM_IOCTL_MODE_MAP_DUMB ;
 int MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RARCH_ERR (char*) ;
 TYPE_1__ drm ;
 int drmIoctl (int ,int ,struct drm_mode_map_dumb*) ;
 int mmap (int ,scalar_t__,int,int ,int,int ) ;

__attribute__((used)) static int modeset_create_dumbfb(int fd, struct modeset_buf *buf,
      int bpp, uint32_t pixformat)
{
   struct drm_mode_create_dumb create_dumb = {0};
   struct drm_mode_map_dumb map_dumb = {0};
   struct drm_mode_fb_cmd cmd_dumb = {0};

   create_dumb.width = buf->width;
   create_dumb.height = buf->height;
   create_dumb.bpp = bpp * 8;
   create_dumb.flags = 0;
   create_dumb.pitch = 0;
   create_dumb.size = 0;
   create_dumb.handle = 0;
   drmIoctl(drm.fd, DRM_IOCTL_MODE_CREATE_DUMB, &create_dumb);


   cmd_dumb.width = create_dumb.width;
   cmd_dumb.height = create_dumb.height;
   cmd_dumb.bpp = create_dumb.bpp;
   cmd_dumb.pitch = create_dumb.pitch;
   cmd_dumb.handle = create_dumb.handle;
   cmd_dumb.depth = 24;


   drmIoctl(drm.fd,DRM_IOCTL_MODE_ADDFB,&cmd_dumb);
   map_dumb.handle=create_dumb.handle;
   drmIoctl(drm.fd,DRM_IOCTL_MODE_MAP_DUMB,&map_dumb);

   buf->pixel_format = pixformat;
   buf->fb_id = cmd_dumb.fb_id;
   buf->stride = create_dumb.pitch;
   buf->size = create_dumb.size;
   buf->handle = create_dumb.handle;


   buf->map = mmap(0, buf->size, PROT_READ | PROT_WRITE, MAP_SHARED,
         fd, map_dumb.offset);
   if (buf->map == MAP_FAILED)
   {
      RARCH_ERR ("DRM: cannot mmap dumb buffer\n");
      return 0;
   }

   return 0;
}
