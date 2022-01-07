
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ shmaddr; } ;
struct TYPE_4__ {int width; int display; int height; int image; int gc; int wndw; TYPE_1__ shmInfo; } ;
typedef TYPE_2__ xshm_t ;
typedef int video_frame_info_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int False ;
 int XFlush (int ) ;
 int XShmPutImage (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int ) ;
 int memcpy (int *,int *,unsigned int) ;
 int menu_driver_frame (int *) ;

__attribute__((used)) static bool xshm_gfx_frame(void *data, const void *frame, unsigned width,
      unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   xshm_t* xshm = (xshm_t*)data;
   int y;

   for (y=0;y<height;y++)
   {
      memcpy((uint8_t*)xshm->shmInfo.shmaddr + sizeof(uint32_t)*xshm->width*y,
            (uint8_t*)frame + pitch*y, pitch);
   }





   XShmPutImage(xshm->display, xshm->wndw, xshm->gc, xshm->image,
                0, 0, 0, 0, xshm->width, xshm->height, False);
   XFlush(xshm->display);

   return 1;
}
