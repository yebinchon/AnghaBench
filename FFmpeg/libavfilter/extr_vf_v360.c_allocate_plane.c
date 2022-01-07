
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* uv_linesize; int* pr_height; void** ker; void** v; void** u; } ;
typedef TYPE_1__ V360Context ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_calloc (int,int) ;

__attribute__((used)) static int allocate_plane(V360Context *s, int sizeof_uv, int sizeof_ker, int p)
{
    s->u[p] = av_calloc(s->uv_linesize[p] * s->pr_height[p], sizeof_uv);
    s->v[p] = av_calloc(s->uv_linesize[p] * s->pr_height[p], sizeof_uv);
    if (!s->u[p] || !s->v[p])
        return AVERROR(ENOMEM);
    if (sizeof_ker) {
        s->ker[p] = av_calloc(s->uv_linesize[p] * s->pr_height[p], sizeof_ker);
        if (!s->ker[p])
            return AVERROR(ENOMEM);
    }

    return 0;
}
