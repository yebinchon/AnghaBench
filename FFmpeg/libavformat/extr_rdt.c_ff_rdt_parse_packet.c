
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int (* parse_packet ) (int ,int ,int ,int *,scalar_t__*,int *,int,int ,int) ;int prev_stream_id; int prev_set_id; scalar_t__ prev_timestamp; int n_streams; int * streams; int dynamic_protocol_context; int ic; } ;
typedef TYPE_1__ RDTDemuxContext ;
typedef int AVPacket ;


 int RTP_FLAG_KEY ;
 int ff_rdt_parse_header (int *,int,int*,int*,int*,int*,scalar_t__*) ;
 int stub1 (int ,int ,int ,int *,scalar_t__*,int *,int,int ,int) ;
 int stub2 (int ,int ,int ,int *,scalar_t__*,int *,int,int ,int) ;

int
ff_rdt_parse_packet(RDTDemuxContext *s, AVPacket *pkt,
                    uint8_t **bufptr, int len)
{
    uint8_t *buf = bufptr ? *bufptr : ((void*)0);
    int seq_no, flags = 0, stream_id, set_id, is_keyframe;
    uint32_t timestamp;
    int rv= 0;

    if (!s->parse_packet)
        return -1;

    if (!buf && s->prev_stream_id != -1) {

        timestamp= 0;
        rv= s->parse_packet(s->ic, s->dynamic_protocol_context,
                            s->streams[s->prev_stream_id],
                            pkt, &timestamp, ((void*)0), 0, 0, flags);
        return rv;
    }

    if (len < 12)
        return -1;
    rv = ff_rdt_parse_header(buf, len, &set_id, &seq_no, &stream_id, &is_keyframe, &timestamp);
    if (rv < 0)
        return rv;
    if (is_keyframe &&
        (set_id != s->prev_set_id || timestamp != s->prev_timestamp ||
         stream_id != s->prev_stream_id)) {
        flags |= RTP_FLAG_KEY;
        s->prev_set_id = set_id;
        s->prev_timestamp = timestamp;
    }
    s->prev_stream_id = stream_id;
    buf += rv;
    len -= rv;

     if (s->prev_stream_id >= s->n_streams) {
         s->prev_stream_id = -1;
         return -1;
     }

    rv = s->parse_packet(s->ic, s->dynamic_protocol_context,
                         s->streams[s->prev_stream_id],
                         pkt, &timestamp, buf, len, 0, flags);

    return rv;
}
