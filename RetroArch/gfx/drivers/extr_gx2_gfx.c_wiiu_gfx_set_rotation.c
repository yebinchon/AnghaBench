
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int rotation; int should_resize; } ;
typedef TYPE_1__ wiiu_video_t ;


 int wiiu_set_projection (TYPE_1__*) ;

__attribute__((used)) static void wiiu_gfx_set_rotation(void *data,
                                  unsigned rotation)
{
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (wiiu)
   {
      wiiu->rotation = rotation;
      wiiu_set_projection(wiiu);
      wiiu->should_resize = 1;
   }
}
