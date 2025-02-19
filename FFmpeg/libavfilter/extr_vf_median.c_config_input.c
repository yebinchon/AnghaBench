
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int w; int h; TYPE_5__* dst; int format; } ;
struct TYPE_11__ {int log2_chroma_h; int log2_chroma_w; TYPE_1__* comp; } ;
struct TYPE_10__ {int depth; int* planewidth; int* planeheight; int radiusV; int radius; int nb_planes; int t; int planes; int nb_threads; int bins; int fine_size; int coarse_size; int filter_plane; int hmuladd; int hsub; int hadd; void** fine; void** coarse; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ MedianContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (int,int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FFMAX (int,int ) ;
 int FFMIN (int,int ) ;
 void* av_calloc (int,int) ;
 int av_log (TYPE_5__*,int ,char*,int,int,int) ;
 void* av_malloc_array (int,int) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int filter_plane_10 ;
 int filter_plane_12 ;
 int filter_plane_14 ;
 int filter_plane_16 ;
 int filter_plane_8 ;
 int filter_plane_9 ;
 int hadd ;
 int hmuladd ;
 int hsub ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    MedianContext *s = inlink->dst->priv;

    s->depth = desc->comp[0].depth;
    s->planewidth[1] = s->planewidth[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->planewidth[0] = s->planewidth[3] = inlink->w;
    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    s->radiusV = !s->radiusV ? s->radius : s->radiusV;
    s->nb_planes = av_pix_fmt_count_planes(inlink->format);
    s->t = 2 * s->radius * s->radiusV + 2 * s->radius;

    for (int i = 0; i < s->nb_planes; i++) {
        if (!(s->planes & (1 << i)))
            continue;

        if (s->planewidth[i] < s->radius * 2 + 1) {
            av_log(inlink->dst, AV_LOG_ERROR, "The %d plane width %d must be not less than %d\n", i, s->planewidth[i], s->radius * 2 + 1);
            return AVERROR(EINVAL);
        }

        if (s->planeheight[i] < s->radiusV * 2 + 1) {
            av_log(inlink->dst, AV_LOG_ERROR, "The %d plane height %d must be not less than %d\n", i, s->planeheight[i], s->radiusV * 2 + 1);
            return AVERROR(EINVAL);
        }
    }

    s->nb_threads = FFMAX(1, FFMIN(s->planeheight[1] / (s->radiusV + 1), ff_filter_get_nb_threads(inlink->dst)));
    s->bins = 1 << ((s->depth + 1) / 2);
    s->fine_size = s->bins * s->bins * inlink->w;
    s->coarse_size = s->bins * inlink->w;
    s->coarse = av_calloc(s->nb_threads, sizeof(*s->coarse));
    s->fine = av_calloc(s->nb_threads, sizeof(*s->fine));
    if (!s->coarse || !s->fine)
        return AVERROR(ENOMEM);
    for (int i = 0; i < s->nb_threads; i++) {
        s->coarse[i] = av_malloc_array(s->coarse_size, sizeof(**s->coarse));
        s->fine[i] = av_malloc_array(s->fine_size, sizeof(**s->fine));
        if (!s->coarse[i] || !s->fine[i])
            return AVERROR(ENOMEM);
    }

    s->hadd = hadd;
    s->hsub = hsub;
    s->hmuladd = hmuladd;

    switch (s->depth) {
    case 8: s->filter_plane = filter_plane_8; break;
    case 9: s->filter_plane = filter_plane_9; break;
    case 10: s->filter_plane = filter_plane_10; break;
    case 12: s->filter_plane = filter_plane_12; break;
    case 14: s->filter_plane = filter_plane_14; break;
    case 16: s->filter_plane = filter_plane_16; break;
    }

    return 0;
}
