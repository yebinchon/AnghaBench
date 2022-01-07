
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct TYPE_22__ {TYPE_14__** streams; TYPE_2__* pb; TYPE_1__* oformat; } ;
struct TYPE_21__ {size_t stream_index; } ;
struct TYPE_20__ {int error; } ;
struct TYPE_19__ {int flags; int (* write_packet ) (TYPE_4__*,int *) ;} ;
struct TYPE_18__ {int nb_frames; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVFMT_ALLOW_FLUSH ;
 int AVFMT_NOTIMESTAMPS ;
 int compute_muxer_pkt_fields (TYPE_4__*,TYPE_14__*,TYPE_3__*) ;
 int do_packet_auto_bsf (TYPE_4__*,TYPE_3__*) ;
 int flush_if_needed (TYPE_4__*) ;
 int prepare_input_packet (TYPE_4__*,TYPE_3__*) ;
 int stub1 (TYPE_4__*,int *) ;
 int write_packet (TYPE_4__*,TYPE_3__*) ;

int av_write_frame(AVFormatContext *s, AVPacket *pkt)
{
    int ret;

    ret = prepare_input_packet(s, pkt);
    if (ret < 0)
        return ret;

    if (!pkt) {
        if (s->oformat->flags & AVFMT_ALLOW_FLUSH) {
            ret = s->oformat->write_packet(s, ((void*)0));
            flush_if_needed(s);
            if (ret >= 0 && s->pb && s->pb->error < 0)
                ret = s->pb->error;
            return ret;
        }
        return 1;
    }

    ret = do_packet_auto_bsf(s, pkt);
    if (ret <= 0)
        return ret;
    ret = write_packet(s, pkt);
    if (ret >= 0 && s->pb && s->pb->error < 0)
        ret = s->pb->error;

    if (ret >= 0)
        s->streams[pkt->stream_index]->nb_frames++;
    return ret;
}
