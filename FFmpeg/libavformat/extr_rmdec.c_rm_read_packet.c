
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_17__ {int pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_16__ {scalar_t__ discard; TYPE_1__* priv_data; } ;
struct TYPE_15__ {size_t audio_stream_num; scalar_t__ old_format; scalar_t__ audio_pkt_cnt; } ;
struct TYPE_14__ {int coded_framesize; int sub_packet_h; int audio_framesize; } ;
typedef TYPE_1__ RMStream ;
typedef TYPE_2__ RMDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 scalar_t__ AVDISCARD_ALL ;
 scalar_t__ AVDISCARD_NONKEY ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVINDEX_KEYFRAME ;
 int AV_NOPTS_VALUE ;
 int EIO ;
 int RAW_PACKET_SIZE ;
 int av_add_index_entry (TYPE_3__*,int ,int ,int ,int ,int ) ;
 int av_packet_unref (int *) ;
 scalar_t__ avio_feof (int ) ;
 int avio_tell (int ) ;
 int ff_rm_parse_packet (TYPE_4__*,int ,TYPE_3__*,TYPE_1__*,int,int *,int*,int,int ) ;
 int ff_rm_retrieve_cache (TYPE_4__*,int ,TYPE_3__*,TYPE_1__*,int *) ;
 int rm_sync (TYPE_4__*,int *,int*,int*,int *) ;

__attribute__((used)) static int rm_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    RMDemuxContext *rm = s->priv_data;
    AVStream *st = ((void*)0);
    int i, len, res, seq = 1;
    int64_t timestamp, pos;
    int flags;

    for (;;) {
        if (rm->audio_pkt_cnt) {

            st = s->streams[rm->audio_stream_num];
            res = ff_rm_retrieve_cache(s, s->pb, st, st->priv_data, pkt);
            if(res < 0)
                return res;
            flags = 0;
        } else {
            if (rm->old_format) {
                RMStream *ast;

                st = s->streams[0];
                ast = st->priv_data;
                timestamp = AV_NOPTS_VALUE;
                len = !ast->audio_framesize ? RAW_PACKET_SIZE :
                    ast->coded_framesize * ast->sub_packet_h / 2;
                flags = (seq++ == 1) ? 2 : 0;
                pos = avio_tell(s->pb);
            } else {
                len = rm_sync(s, &timestamp, &flags, &i, &pos);
                if (len > 0)
                    st = s->streams[i];
            }

            if (avio_feof(s->pb))
                return AVERROR_EOF;
            if (len <= 0)
                return AVERROR(EIO);

            res = ff_rm_parse_packet (s, s->pb, st, st->priv_data, len, pkt,
                                      &seq, flags, timestamp);
            if (res < -1)
                return res;
            if((flags&2) && (seq&0x7F) == 1)
                av_add_index_entry(st, pos, timestamp, 0, 0, AVINDEX_KEYFRAME);
            if (res)
                continue;
        }

        if( (st->discard >= AVDISCARD_NONKEY && !(flags&2))
           || st->discard >= AVDISCARD_ALL){
            av_packet_unref(pkt);
        } else
            break;
    }

    return 0;
}
