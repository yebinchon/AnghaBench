
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {int buffer_stride; void* mcscratch; void* mctmp; void* edge_emu_buffer_base; int edge_emu_buffer; TYPE_1__ seq; } ;
typedef TYPE_2__ DiracContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int MAX_BLOCKSIZE ;
 int av_assert0 (int) ;
 int av_freep (void**) ;
 void* av_malloc_array (int,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int alloc_buffers(DiracContext *s, int stride)
{
    int w = s->seq.width;
    int h = s->seq.height;

    av_assert0(stride >= w);
    stride += 64;

    if (s->buffer_stride >= stride)
        return 0;
    s->buffer_stride = 0;

    av_freep(&s->edge_emu_buffer_base);
    memset(s->edge_emu_buffer, 0, sizeof(s->edge_emu_buffer));
    av_freep(&s->mctmp);
    av_freep(&s->mcscratch);

    s->edge_emu_buffer_base = av_malloc_array(stride, MAX_BLOCKSIZE);

    s->mctmp = av_malloc_array((stride+MAX_BLOCKSIZE), (h+MAX_BLOCKSIZE) * sizeof(*s->mctmp));
    s->mcscratch = av_malloc_array(stride, MAX_BLOCKSIZE);

    if (!s->edge_emu_buffer_base || !s->mctmp || !s->mcscratch)
        return AVERROR(ENOMEM);

    s->buffer_stride = stride;
    return 0;
}
