
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * renderchain_data; } ;
typedef TYPE_1__ d3d8_video_t ;


 int d3d8_renderchain_free (int *) ;

__attribute__((used)) static void d3d8_deinit_chain(d3d8_video_t *d3d)
{
   d3d8_renderchain_free(d3d->renderchain_data);

   d3d->renderchain_data = ((void*)0);
}
