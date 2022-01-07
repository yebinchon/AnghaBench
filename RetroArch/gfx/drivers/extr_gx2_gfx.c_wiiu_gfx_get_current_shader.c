
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct video_shader* shader_preset; } ;
typedef TYPE_1__ wiiu_video_t ;
struct video_shader {int dummy; } ;



__attribute__((used)) static struct video_shader *wiiu_gfx_get_current_shader(void *data)
{
   wiiu_video_t *wiiu = (wiiu_video_t *)data;

   if (!wiiu)
      return ((void*)0);

   return wiiu->shader_preset;
}
