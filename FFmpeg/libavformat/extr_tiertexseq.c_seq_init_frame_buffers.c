
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_size; int data; scalar_t__ fill_size; } ;
typedef TYPE_1__ TiertexSeqFrameBuffer ;
struct TYPE_5__ {int frame_buffers_count; TYPE_1__* frame_buffers; } ;
typedef TYPE_2__ SeqDemuxContext ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int SEEK_SET ;
 int SEQ_NUM_FRAME_BUFFERS ;
 int av_malloc (int) ;
 int avio_rl16 (int *) ;
 int avio_seek (int *,int,int ) ;

__attribute__((used)) static int seq_init_frame_buffers(SeqDemuxContext *seq, AVIOContext *pb)
{
    int i, sz;
    TiertexSeqFrameBuffer *seq_buffer;

    avio_seek(pb, 256, SEEK_SET);

    for (i = 0; i < SEQ_NUM_FRAME_BUFFERS; i++) {
        sz = avio_rl16(pb);
        if (sz == 0)
            break;
        else {
            seq_buffer = &seq->frame_buffers[i];
            seq_buffer->fill_size = 0;
            seq_buffer->data_size = sz;
            seq_buffer->data = av_malloc(sz);
            if (!seq_buffer->data)
                return AVERROR(ENOMEM);
        }
    }
    seq->frame_buffers_count = i;
    return 0;
}
