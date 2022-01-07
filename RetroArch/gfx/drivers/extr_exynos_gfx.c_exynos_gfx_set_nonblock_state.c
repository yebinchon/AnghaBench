
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct exynos_video {TYPE_1__* data; } ;
struct TYPE_2__ {int sync; } ;



__attribute__((used)) static void exynos_gfx_set_nonblock_state(void *data, bool state)
{
   struct exynos_video *vid = data;
   if (vid && vid->data)
      vid->data->sync = !state;
}
