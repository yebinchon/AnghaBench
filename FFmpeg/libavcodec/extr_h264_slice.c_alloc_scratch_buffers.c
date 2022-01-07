
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mb_width; } ;
struct TYPE_4__ {scalar_t__* top_borders_allocated; scalar_t__ edge_emu_buffer_allocated; scalar_t__ bipred_scratchpad_allocated; int * top_borders; int edge_emu_buffer; int bipred_scratchpad; TYPE_2__* h264; } ;
typedef TYPE_1__ H264SliceContext ;
typedef TYPE_2__ H264Context ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ FFABS (int) ;
 int FFALIGN (scalar_t__,int) ;
 int av_fast_malloc (int *,scalar_t__*,int) ;
 int av_fast_mallocz (int *,scalar_t__*,int) ;
 int av_freep (int *) ;

__attribute__((used)) static int alloc_scratch_buffers(H264SliceContext *sl, int linesize)
{
    const H264Context *h = sl->h264;
    int alloc_size = FFALIGN(FFABS(linesize) + 32, 32);

    av_fast_malloc(&sl->bipred_scratchpad, &sl->bipred_scratchpad_allocated, 16 * 6 * alloc_size);


    av_fast_malloc(&sl->edge_emu_buffer, &sl->edge_emu_buffer_allocated, alloc_size * 2 * 21);

    av_fast_mallocz(&sl->top_borders[0], &sl->top_borders_allocated[0],
                   h->mb_width * 16 * 3 * sizeof(uint8_t) * 2);
    av_fast_mallocz(&sl->top_borders[1], &sl->top_borders_allocated[1],
                   h->mb_width * 16 * 3 * sizeof(uint8_t) * 2);

    if (!sl->bipred_scratchpad || !sl->edge_emu_buffer ||
        !sl->top_borders[0] || !sl->top_borders[1]) {
        av_freep(&sl->bipred_scratchpad);
        av_freep(&sl->edge_emu_buffer);
        av_freep(&sl->top_borders[0]);
        av_freep(&sl->top_borders[1]);

        sl->bipred_scratchpad_allocated = 0;
        sl->edge_emu_buffer_allocated = 0;
        sl->top_borders_allocated[0] = 0;
        sl->top_borders_allocated[1] = 0;
        return AVERROR(ENOMEM);
    }

    return 0;
}
