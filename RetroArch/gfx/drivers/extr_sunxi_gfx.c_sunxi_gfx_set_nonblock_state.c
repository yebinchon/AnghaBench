
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_video {int dummy; } ;



__attribute__((used)) static void sunxi_gfx_set_nonblock_state(void *data, bool state)
{
   struct sunxi_video *vid = data;

   (void)vid;
   (void)state;
}
