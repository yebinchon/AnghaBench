
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_18__ {int stream_index; int pos; int pts; int * data; } ;
struct TYPE_17__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_16__ {int queue_end; int queue; int ctx; } ;
struct TYPE_14__ {int sub_packet_size; int coded_framesize; int sub_packet_h; int sub_packet_cnt; int frame_size; int pkt_cnt; int buf_timecode; int * buf; } ;
struct TYPE_15__ {TYPE_2__ audio; } ;
struct TYPE_13__ {int block_align; scalar_t__ codec_id; } ;
typedef TYPE_3__ MatroskaTrack ;
typedef TYPE_4__ MatroskaDemuxContext ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_CODEC_ID_RA_288 ;
 scalar_t__ AV_CODEC_ID_SIPR ;
 int AV_LOG_ERROR ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int av_log (int ,int ,char*) ;
 int av_new_packet (TYPE_6__*,int) ;
 int av_packet_unref (TYPE_6__*) ;
 int ff_packet_list_put (int *,int *,TYPE_6__*,int ) ;
 int ff_rm_reorder_sipr_data (int *,int,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int matroska_parse_rm_audio(MatroskaDemuxContext *matroska,
                                   MatroskaTrack *track, AVStream *st,
                                   uint8_t *data, int size, uint64_t timecode,
                                   int64_t pos)
{
    int a = st->codecpar->block_align;
    int sps = track->audio.sub_packet_size;
    int cfs = track->audio.coded_framesize;
    int h = track->audio.sub_packet_h;
    int y = track->audio.sub_packet_cnt;
    int w = track->audio.frame_size;
    int x;

    if (!track->audio.pkt_cnt) {
        if (track->audio.sub_packet_cnt == 0)
            track->audio.buf_timecode = timecode;
        if (st->codecpar->codec_id == AV_CODEC_ID_RA_288) {
            if (size < cfs * h / 2) {
                av_log(matroska->ctx, AV_LOG_ERROR,
                       "Corrupt int4 RM-style audio packet size\n");
                return AVERROR_INVALIDDATA;
            }
            for (x = 0; x < h / 2; x++)
                memcpy(track->audio.buf + x * 2 * w + y * cfs,
                       data + x * cfs, cfs);
        } else if (st->codecpar->codec_id == AV_CODEC_ID_SIPR) {
            if (size < w) {
                av_log(matroska->ctx, AV_LOG_ERROR,
                       "Corrupt sipr RM-style audio packet size\n");
                return AVERROR_INVALIDDATA;
            }
            memcpy(track->audio.buf + y * w, data, w);
        } else {
            if (size < sps * w / sps || h<=0 || w%sps) {
                av_log(matroska->ctx, AV_LOG_ERROR,
                       "Corrupt generic RM-style audio packet size\n");
                return AVERROR_INVALIDDATA;
            }
            for (x = 0; x < w / sps; x++)
                memcpy(track->audio.buf +
                       sps * (h * x + ((h + 1) / 2) * (y & 1) + (y >> 1)),
                       data + x * sps, sps);
        }

        if (++track->audio.sub_packet_cnt >= h) {
            if (st->codecpar->codec_id == AV_CODEC_ID_SIPR)
                ff_rm_reorder_sipr_data(track->audio.buf, h, w);
            track->audio.sub_packet_cnt = 0;
            track->audio.pkt_cnt = h * w / a;
        }
    }

    while (track->audio.pkt_cnt) {
        int ret;
        AVPacket pktl, *pkt = &pktl;

        ret = av_new_packet(pkt, a);
        if (ret < 0) {
            return ret;
        }
        memcpy(pkt->data,
               track->audio.buf + a * (h * w / a - track->audio.pkt_cnt--),
               a);
        pkt->pts = track->audio.buf_timecode;
        track->audio.buf_timecode = AV_NOPTS_VALUE;
        pkt->pos = pos;
        pkt->stream_index = st->index;
        ret = ff_packet_list_put(&matroska->queue, &matroska->queue_end, pkt, 0);
        if (ret < 0) {
            av_packet_unref(pkt);
            return AVERROR(ENOMEM);
        }
    }

    return 0;
}
