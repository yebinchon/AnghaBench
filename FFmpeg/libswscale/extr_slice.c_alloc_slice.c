
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int h_chr_sub_sample; int v_chr_sub_sample; int fmt; int is_ring; TYPE_1__* plane; scalar_t__ should_free_lines; } ;
struct TYPE_4__ {int available_lines; scalar_t__ sliceH; scalar_t__ sliceY; int line; int * tmp; } ;
typedef TYPE_2__ SwsSlice ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_mallocz_array (int,int) ;

__attribute__((used)) static int alloc_slice(SwsSlice *s, enum AVPixelFormat fmt, int lumLines, int chrLines, int h_sub_sample, int v_sub_sample, int ring)
{
    int i;
    int size[4] = { lumLines,
                    chrLines,
                    chrLines,
                    lumLines };

    s->h_chr_sub_sample = h_sub_sample;
    s->v_chr_sub_sample = v_sub_sample;
    s->fmt = fmt;
    s->is_ring = ring;
    s->should_free_lines = 0;

    for (i = 0; i < 4; ++i) {
        int n = size[i] * ( ring == 0 ? 1 : 3);
        s->plane[i].line = av_mallocz_array(sizeof(uint8_t*), n);
        if (!s->plane[i].line)
            return AVERROR(ENOMEM);

        s->plane[i].tmp = ring ? s->plane[i].line + size[i] * 2 : ((void*)0);
        s->plane[i].available_lines = size[i];
        s->plane[i].sliceY = 0;
        s->plane[i].sliceH = 0;
    }
    return 0;
}
