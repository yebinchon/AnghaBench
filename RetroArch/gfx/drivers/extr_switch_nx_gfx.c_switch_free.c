
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* pixels; } ;
struct TYPE_5__ {TYPE_1__ menu_texture; int fb; } ;
typedef TYPE_2__ switch_video_t ;


 int framebufferClose (int *) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void switch_free(void *data)
{
    switch_video_t *sw = data;

    framebufferClose(&sw->fb);

    if (sw->menu_texture.pixels)
        free(sw->menu_texture.pixels);

    free(sw);
}
