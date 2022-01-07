
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int huff_buffer; } ;
struct TYPE_4__ {int mb_width; int width; int mb_height; int height; int chroma_format; TYPE_2__* mjpeg_ctx; } ;
typedef TYPE_1__ MpegEncContext ;
typedef int MJpegHuffmanCode ;
typedef TYPE_2__ MJpegContext ;


 int AVERROR (int ) ;



 int ENOMEM ;
 int av_assert0 (int ) ;
 int av_malloc_array (size_t,int) ;

__attribute__((used)) static int alloc_huffman(MpegEncContext *s)
{
    MJpegContext *m = s->mjpeg_ctx;
    size_t num_mbs, num_blocks, num_codes;
    int blocks_per_mb;


    s->mb_width = (s->width + 15) / 16;
    s->mb_height = (s->height + 15) / 16;

    switch (s->chroma_format) {
    case 130: blocks_per_mb = 6; break;
    case 129: blocks_per_mb = 8; break;
    case 128: blocks_per_mb = 12; break;
    default: av_assert0(0);
    };


    num_mbs = s->mb_width * s->mb_height;
    num_blocks = num_mbs * blocks_per_mb;
    num_codes = num_blocks * 64;

    m->huff_buffer = av_malloc_array(num_codes, sizeof(MJpegHuffmanCode));
    if (!m->huff_buffer)
        return AVERROR(ENOMEM);
    return 0;
}
