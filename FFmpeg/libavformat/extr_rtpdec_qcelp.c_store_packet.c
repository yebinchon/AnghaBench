
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_15__ {int stream_index; int data; } ;
struct TYPE_14__ {int index; } ;
struct TYPE_13__ {int size; int data; scalar_t__ pos; } ;
struct TYPE_12__ {int interleave_size; int interleave_index; int group_finished; int next_size; TYPE_2__* group; int next_timestamp; int next_data; } ;
typedef TYPE_1__ PayloadContext ;
typedef TYPE_2__ InterleavePacket ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int const FF_ARRAY_ELEMS (int*) ;
 int RTP_NOTS_VALUE ;
 int av_log (int *,int ,char*,int,...) ;
 int av_new_packet (TYPE_4__*,int) ;
 int* frame_sizes ;
 int memcpy (int ,int const*,int) ;
 int return_stored_frame (int *,TYPE_1__*,TYPE_3__*,TYPE_4__*,int *,int const*,int) ;

__attribute__((used)) static int store_packet(AVFormatContext *ctx, PayloadContext *data,
                        AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                        const uint8_t *buf, int len)
{
    int interleave_size, interleave_index;
    int frame_size, ret;
    InterleavePacket* ip;

    if (len < 2)
        return AVERROR_INVALIDDATA;

    interleave_size = buf[0] >> 3 & 7;
    interleave_index = buf[0] & 7;

    if (interleave_size > 5) {
        av_log(ctx, AV_LOG_ERROR, "Invalid interleave size %d\n",
                                   interleave_size);
        return AVERROR_INVALIDDATA;
    }
    if (interleave_index > interleave_size) {
        av_log(ctx, AV_LOG_ERROR, "Invalid interleave index %d/%d\n",
                                   interleave_index, interleave_size);
        return AVERROR_INVALIDDATA;
    }
    if (interleave_size != data->interleave_size) {
        int i;

        data->interleave_size = interleave_size;
        data->interleave_index = 0;
        for (i = 0; i < 6; i++)
            data->group[i].size = 0;
    }

    if (interleave_index < data->interleave_index) {

        if (data->group_finished) {


            data->interleave_index = 0;
        } else {


            for (; data->interleave_index <= interleave_size;
                 data->interleave_index++)
                data->group[data->interleave_index].size = 0;

            if (len > sizeof(data->next_data))
                return AVERROR_INVALIDDATA;
            memcpy(data->next_data, buf, len);
            data->next_size = len;
            data->next_timestamp = *timestamp;
            *timestamp = RTP_NOTS_VALUE;

            data->interleave_index = 0;
            return return_stored_frame(ctx, data, st, pkt, timestamp, buf, len);
        }
    }
    if (interleave_index > data->interleave_index) {

        for (; data->interleave_index < interleave_index;
             data->interleave_index++)
            data->group[data->interleave_index].size = 0;
    }
    data->interleave_index = interleave_index;

    if (buf[1] >= FF_ARRAY_ELEMS(frame_sizes))
        return AVERROR_INVALIDDATA;
    frame_size = frame_sizes[buf[1]];
    if (1 + frame_size > len)
        return AVERROR_INVALIDDATA;

    if (len - 1 - frame_size > sizeof(data->group[0].data))
        return AVERROR_INVALIDDATA;

    if ((ret = av_new_packet(pkt, frame_size)) < 0)
        return ret;
    memcpy(pkt->data, &buf[1], frame_size);
    pkt->stream_index = st->index;

    ip = &data->group[data->interleave_index];
    ip->size = len - 1 - frame_size;
    ip->pos = 0;
    memcpy(ip->data, &buf[1 + frame_size], ip->size);



    data->group_finished = ip->size == 0;

    if (interleave_index == interleave_size) {
        data->interleave_index = 0;
        return !data->group_finished;
    } else {
        data->interleave_index++;
        return 0;
    }
}
