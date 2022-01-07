
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct TYPE_5__ {TYPE_1__ video_info; } ;
typedef TYPE_2__ d3d8_video_t ;


 int RARCH_LOG (char*,unsigned int,unsigned int) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool d3d8_set_resize(d3d8_video_t *d3d,
      unsigned new_width, unsigned new_height)
{

   if ( (new_width == d3d->video_info.width)
         && (new_height == d3d->video_info.height))
      return 0;

   RARCH_LOG("[D3D8]: Resize %ux%u.\n", new_width, new_height);
   d3d->video_info.width = new_width;
   d3d->video_info.height = new_height;
   video_driver_set_size(&new_width, &new_height);

   return 1;
}
