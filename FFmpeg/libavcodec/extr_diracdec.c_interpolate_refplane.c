
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* draw_edges ) (scalar_t__,int,int,int,int,int,int) ;} ;
struct TYPE_8__ {int (* dirac_hpel_filter ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ;} ;
struct TYPE_12__ {TYPE_2__ mpvencdsp; TYPE_1__ diracdsp; int mv_precision; } ;
struct TYPE_11__ {int* interpolated; TYPE_3__* avframe; scalar_t__** hpel; scalar_t__** hpel_base; } ;
struct TYPE_10__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_4__ DiracFrame ;
typedef TYPE_5__ DiracContext ;


 int AVERROR (int ) ;
 int EDGE_BOTTOM ;
 int EDGE_TOP ;
 int EDGE_WIDTH ;
 int ENOMEM ;
 scalar_t__ av_malloc (int) ;
 int stub1 (scalar_t__,int,int,int,int,int,int) ;
 int stub2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ;
 int stub3 (scalar_t__,int,int,int,int,int,int) ;
 int stub4 (scalar_t__,int,int,int,int,int,int) ;
 int stub5 (scalar_t__,int,int,int,int,int,int) ;

__attribute__((used)) static int interpolate_refplane(DiracContext *s, DiracFrame *ref, int plane, int width, int height)
{



    int i, edge = EDGE_WIDTH/2;

    ref->hpel[plane][0] = ref->avframe->data[plane];
    s->mpvencdsp.draw_edges(ref->hpel[plane][0], ref->avframe->linesize[plane], width, height, edge, edge, EDGE_TOP | EDGE_BOTTOM);


    if (!s->mv_precision)
        return 0;

    for (i = 1; i < 4; i++) {
        if (!ref->hpel_base[plane][i])
            ref->hpel_base[plane][i] = av_malloc((height+2*edge) * ref->avframe->linesize[plane] + 32);
        if (!ref->hpel_base[plane][i]) {
            return AVERROR(ENOMEM);
        }

        ref->hpel[plane][i] = ref->hpel_base[plane][i] + edge*ref->avframe->linesize[plane] + 16;
    }

    if (!ref->interpolated[plane]) {
        s->diracdsp.dirac_hpel_filter(ref->hpel[plane][1], ref->hpel[plane][2],
                                      ref->hpel[plane][3], ref->hpel[plane][0],
                                      ref->avframe->linesize[plane], width, height);
        s->mpvencdsp.draw_edges(ref->hpel[plane][1], ref->avframe->linesize[plane], width, height, edge, edge, EDGE_TOP | EDGE_BOTTOM);
        s->mpvencdsp.draw_edges(ref->hpel[plane][2], ref->avframe->linesize[plane], width, height, edge, edge, EDGE_TOP | EDGE_BOTTOM);
        s->mpvencdsp.draw_edges(ref->hpel[plane][3], ref->avframe->linesize[plane], width, height, edge, edge, EDGE_TOP | EDGE_BOTTOM);
    }
    ref->interpolated[plane] = 1;

    return 0;
}
