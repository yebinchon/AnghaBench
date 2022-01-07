
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surface; int vsync_h; } ;
typedef TYPE_1__ switch_video_t ;


 int display_close_layer (int *) ;
 int display_finalize () ;
 int free (TYPE_1__*) ;
 int svcCloseHandle (int ) ;

__attribute__((used)) static void switch_free(void *data)
{
 switch_video_t *sw = data;
 svcCloseHandle(sw->vsync_h);
 display_close_layer(&sw->surface);
 display_finalize();
 free(sw);
}
