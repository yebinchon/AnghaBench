
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fill_size; int data; } ;
typedef TYPE_1__ TiertexSeqFrameBuffer ;
struct TYPE_6__ {int current_audio_data_size; int current_pal_data_size; int current_video_data_ptr; scalar_t__ current_video_data_size; TYPE_1__* frame_buffers; void* current_pal_data_offs; void* current_audio_data_offs; int current_frame_offs; } ;
typedef TYPE_2__ SeqDemuxContext ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int SEEK_SET ;
 int SEQ_AUDIO_BUFFER_SIZE ;
 scalar_t__ SEQ_FRAME_SIZE ;
 unsigned int SEQ_NUM_FRAME_BUFFERS ;
 unsigned int avio_r8 (int *) ;
 void* avio_rl16 (int *) ;
 int avio_seek (int *,int ,int ) ;
 int seq_fill_buffer (TYPE_2__*,int *,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int seq_parse_frame_data(SeqDemuxContext *seq, AVIOContext *pb)
{
    unsigned int offset_table[4], buffer_num[4];
    TiertexSeqFrameBuffer *seq_buffer;
    int i, e, err;

    seq->current_frame_offs += SEQ_FRAME_SIZE;
    avio_seek(pb, seq->current_frame_offs, SEEK_SET);


    seq->current_audio_data_offs = avio_rl16(pb);
    if (seq->current_audio_data_offs) {
        seq->current_audio_data_size = SEQ_AUDIO_BUFFER_SIZE * 2;
    } else {
        seq->current_audio_data_size = 0;
    }


    seq->current_pal_data_offs = avio_rl16(pb);
    if (seq->current_pal_data_offs) {
        seq->current_pal_data_size = 768;
    } else {
        seq->current_pal_data_size = 0;
    }


    for (i = 0; i < 4; i++)
        buffer_num[i] = avio_r8(pb);

    for (i = 0; i < 4; i++)
        offset_table[i] = avio_rl16(pb);

    for (i = 0; i < 3; i++) {
        if (offset_table[i]) {
            for (e = i + 1; e < 3 && offset_table[e] == 0; e++);
            err = seq_fill_buffer(seq, pb, buffer_num[1 + i],
              offset_table[i],
              offset_table[e] - offset_table[i]);
            if (err)
                return err;
        }
    }

    if (buffer_num[0] != 255) {
        if (buffer_num[0] >= SEQ_NUM_FRAME_BUFFERS)
            return AVERROR_INVALIDDATA;

        seq_buffer = &seq->frame_buffers[buffer_num[0]];
        seq->current_video_data_size = seq_buffer->fill_size;
        seq->current_video_data_ptr = seq_buffer->data;
        seq_buffer->fill_size = 0;
    } else {
        seq->current_video_data_size = 0;
        seq->current_video_data_ptr = 0;
    }

    return 0;
}
