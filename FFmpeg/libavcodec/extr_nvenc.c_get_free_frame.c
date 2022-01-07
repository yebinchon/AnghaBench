
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp_surf ;
struct TYPE_3__ {int unused_surface_queue; } ;
typedef int NvencSurface ;
typedef TYPE_1__ NvencContext ;


 int av_fifo_generic_read (int ,int **,int,int *) ;
 scalar_t__ av_fifo_size (int ) ;

__attribute__((used)) static NvencSurface *get_free_frame(NvencContext *ctx)
{
    NvencSurface *tmp_surf;

    if (!(av_fifo_size(ctx->unused_surface_queue) > 0))

        return ((void*)0);

    av_fifo_generic_read(ctx->unused_surface_queue, &tmp_surf, sizeof(tmp_surf), ((void*)0));
    return tmp_surf;
}
