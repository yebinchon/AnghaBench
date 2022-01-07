
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int rotation; int should_resize; } ;
typedef TYPE_1__ vita_video_t ;



__attribute__((used)) static void vita2d_gfx_set_rotation(void *data,
      unsigned rotation)
{
  vita_video_t *vita = (vita_video_t*)data;

  if (!vita)
     return;

  vita->rotation = rotation;
  vita->should_resize = 1;
}
