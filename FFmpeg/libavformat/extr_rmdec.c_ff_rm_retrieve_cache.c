
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_20__ {TYPE_4__* priv_data; } ;
struct TYPE_19__ {int stream_index; scalar_t__ flags; scalar_t__ pts; int data; } ;
struct TYPE_18__ {int index; TYPE_2__* codecpar; } ;
struct TYPE_17__ {int audio_pkt_cnt; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_16__ {scalar_t__ deint_id; size_t sub_packet_cnt; int sub_packet_h; int audio_framesize; scalar_t__ audiotimestamp; TYPE_1__ pkt; int * sub_packet_lengths; } ;
struct TYPE_15__ {int block_align; } ;
typedef TYPE_3__ RMStream ;
typedef TYPE_4__ RMDemuxContext ;
typedef TYPE_5__ AVStream ;
typedef TYPE_6__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_7__ AVFormatContext ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ AV_PKT_FLAG_KEY ;
 scalar_t__ DEINT_ID_VBRF ;
 scalar_t__ DEINT_ID_VBRS ;
 int av_assert0 (int) ;
 int av_get_packet (int *,TYPE_6__*,int ) ;
 int av_new_packet (TYPE_6__*,int) ;
 int memcpy (int ,scalar_t__,int) ;

int
ff_rm_retrieve_cache (AVFormatContext *s, AVIOContext *pb,
                      AVStream *st, RMStream *ast, AVPacket *pkt)
{
    RMDemuxContext *rm = s->priv_data;
    int ret;

    av_assert0 (rm->audio_pkt_cnt > 0);

    if (ast->deint_id == DEINT_ID_VBRF ||
        ast->deint_id == DEINT_ID_VBRS) {
        ret = av_get_packet(pb, pkt, ast->sub_packet_lengths[ast->sub_packet_cnt - rm->audio_pkt_cnt]);
        if (ret < 0)
            return ret;
    } else {
        ret = av_new_packet(pkt, st->codecpar->block_align);
        if (ret < 0)
            return ret;
        memcpy(pkt->data, ast->pkt.data + st->codecpar->block_align *
               (ast->sub_packet_h * ast->audio_framesize / st->codecpar->block_align - rm->audio_pkt_cnt),
               st->codecpar->block_align);
    }
    rm->audio_pkt_cnt--;
    if ((pkt->pts = ast->audiotimestamp) != AV_NOPTS_VALUE) {
        ast->audiotimestamp = AV_NOPTS_VALUE;
        pkt->flags = AV_PKT_FLAG_KEY;
    } else
        pkt->flags = 0;
    pkt->stream_index = st->index;

    return rm->audio_pkt_cnt;
}
