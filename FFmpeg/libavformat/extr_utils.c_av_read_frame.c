
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_23__ {int flags; TYPE_2__* iformat; TYPE_3__** streams; TYPE_1__* internal; } ;
struct TYPE_22__ {scalar_t__ dts; size_t stream_index; scalar_t__ pts; scalar_t__ duration; int flags; int pos; } ;
struct TYPE_21__ {struct TYPE_21__* next; TYPE_5__ pkt; } ;
struct TYPE_20__ {int pts_wrap_bits; scalar_t__ discard; int index; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {int packet_buffer_end; TYPE_4__* packet_buffer; } ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacketList ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFormatContext ;


 scalar_t__ AVDISCARD_ALL ;
 int AVERROR (int ) ;
 int AVFMT_FLAG_GENPTS ;
 int AVFMT_GENERIC_INDEX ;
 int AVINDEX_KEYFRAME ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_KEY ;
 int EAGAIN ;
 scalar_t__ RELATIVE_TS_BASE ;
 int av_add_index_entry (TYPE_3__*,int ,scalar_t__,int ,int ,int ) ;
 int av_assert2 (int) ;
 scalar_t__ av_compare_mod (scalar_t__,scalar_t__,unsigned long long) ;
 int av_packet_unref (TYPE_5__*) ;
 int ff_packet_list_get (TYPE_4__**,int *,TYPE_5__*) ;
 int ff_packet_list_put (TYPE_4__**,int *,TYPE_5__*,int ) ;
 int ff_reduce_index (TYPE_6__*,int ) ;
 scalar_t__ is_relative (scalar_t__) ;
 int read_frame_internal (TYPE_6__*,TYPE_5__*) ;

int av_read_frame(AVFormatContext *s, AVPacket *pkt)
{
    const int genpts = s->flags & AVFMT_FLAG_GENPTS;
    int eof = 0;
    int ret;
    AVStream *st;

    if (!genpts) {
        ret = s->internal->packet_buffer
              ? ff_packet_list_get(&s->internal->packet_buffer,
                                        &s->internal->packet_buffer_end, pkt)
              : read_frame_internal(s, pkt);
        if (ret < 0)
            return ret;
        goto return_packet;
    }

    for (;;) {
        AVPacketList *pktl = s->internal->packet_buffer;

        if (pktl) {
            AVPacket *next_pkt = &pktl->pkt;

            if (next_pkt->dts != AV_NOPTS_VALUE) {
                int wrap_bits = s->streams[next_pkt->stream_index]->pts_wrap_bits;


                int64_t last_dts = next_pkt->dts;
                av_assert2(wrap_bits <= 64);
                while (pktl && next_pkt->pts == AV_NOPTS_VALUE) {
                    if (pktl->pkt.stream_index == next_pkt->stream_index &&
                        av_compare_mod(next_pkt->dts, pktl->pkt.dts, 2ULL << (wrap_bits - 1)) < 0) {
                        if (av_compare_mod(pktl->pkt.pts, pktl->pkt.dts, 2ULL << (wrap_bits - 1))) {

                            next_pkt->pts = pktl->pkt.dts;
                        }
                        if (last_dts != AV_NOPTS_VALUE) {

                            last_dts = pktl->pkt.dts;
                        }
                    }
                    pktl = pktl->next;
                }
                if (eof && next_pkt->pts == AV_NOPTS_VALUE && last_dts != AV_NOPTS_VALUE) {





                    next_pkt->pts = last_dts + next_pkt->duration;
                }
                pktl = s->internal->packet_buffer;
            }


            st = s->streams[next_pkt->stream_index];
            if (!(next_pkt->pts == AV_NOPTS_VALUE && st->discard < AVDISCARD_ALL &&
                  next_pkt->dts != AV_NOPTS_VALUE && !eof)) {
                ret = ff_packet_list_get(&s->internal->packet_buffer,
                                               &s->internal->packet_buffer_end, pkt);
                goto return_packet;
            }
        }

        ret = read_frame_internal(s, pkt);
        if (ret < 0) {
            if (pktl && ret != AVERROR(EAGAIN)) {
                eof = 1;
                continue;
            } else
                return ret;
        }

        ret = ff_packet_list_put(&s->internal->packet_buffer,
                                 &s->internal->packet_buffer_end,
                                 pkt, 0);
        if (ret < 0) {
            av_packet_unref(pkt);
            return ret;
        }
    }

return_packet:

    st = s->streams[pkt->stream_index];
    if ((s->iformat->flags & AVFMT_GENERIC_INDEX) && pkt->flags & AV_PKT_FLAG_KEY) {
        ff_reduce_index(s, st->index);
        av_add_index_entry(st, pkt->pos, pkt->dts, 0, 0, AVINDEX_KEYFRAME);
    }

    if (is_relative(pkt->dts))
        pkt->dts -= RELATIVE_TS_BASE;
    if (is_relative(pkt->pts))
        pkt->pts -= RELATIVE_TS_BASE;

    return ret;
}
