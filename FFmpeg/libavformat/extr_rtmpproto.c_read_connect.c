
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char uint8_t ;
typedef int tmpstr ;
typedef int command ;
typedef int URLContext ;
struct TYPE_19__ {scalar_t__ buffer; } ;
struct TYPE_18__ {char* app; int * nb_prev_pkt; int * prev_pkt; int out_chunk_size; int stream; int max_sent_unacked; int in_chunk_size; } ;
struct TYPE_17__ {scalar_t__ type; char* data; int size; int member_0; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;
typedef TYPE_3__ GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int AV_LOG_WARNING ;
 scalar_t__ RTMP_CTRL_ABORT_MESSAGE ;
 int RTMP_NETWORK_CHANNEL ;
 int RTMP_PKTDATA_DEFAULT_SIZE ;
 scalar_t__ RTMP_PT_BYTES_READ ;
 scalar_t__ RTMP_PT_CHUNK_SIZE ;
 scalar_t__ RTMP_PT_INVOKE ;
 scalar_t__ RTMP_PT_SET_PEER_BW ;
 scalar_t__ RTMP_PT_USER_CONTROL ;
 scalar_t__ RTMP_PT_WINDOW_ACK_SIZE ;
 int RTMP_SYSTEM_CHANNEL ;
 int av_log (int *,int ,char*,...) ;
 scalar_t__ bytestream2_get_bytes_left (TYPE_3__*) ;
 int bytestream2_init (TYPE_3__*,char const*,int) ;
 int bytestream_put_be16 (char**,int ) ;
 int bytestream_put_be32 (char**,int ) ;
 int bytestream_put_byte (char**,int) ;
 int ff_amf_get_field_value (scalar_t__,scalar_t__,char*,char*,int) ;
 int ff_amf_read_number (TYPE_3__*,double*) ;
 scalar_t__ ff_amf_read_string (TYPE_3__*,char*,int,int*) ;
 int ff_amf_write_field_name (char**,char*) ;
 int ff_amf_write_null (char**) ;
 int ff_amf_write_number (char**,int) ;
 int ff_amf_write_object_end (char**) ;
 int ff_amf_write_object_start (char**) ;
 int ff_amf_write_string (char**,char*) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,scalar_t__,int ,int) ;
 int ff_rtmp_packet_destroy (TYPE_1__*) ;
 int ff_rtmp_packet_dump (int *,TYPE_1__*) ;
 int ff_rtmp_packet_read (int ,TYPE_1__*,int ,int *,int *) ;
 int ff_rtmp_packet_write (int ,TYPE_1__*,int ,int *,int *) ;
 int handle_chunk_size (int *,TYPE_1__*) ;
 int handle_set_peer_bw (int *,TYPE_1__*) ;
 int handle_window_ack_size (int *,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int read_connect(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt = { 0 };
    uint8_t *p;
    const uint8_t *cp;
    int ret;
    char command[64];
    int stringlen;
    double seqnum;
    uint8_t tmpstr[256];
    GetByteContext gbc;


    for (;;) {
        if ((ret = ff_rtmp_packet_read(rt->stream, &pkt, rt->in_chunk_size,
                                       &rt->prev_pkt[0], &rt->nb_prev_pkt[0])) < 0)
            return ret;



        if (pkt.type == RTMP_PT_CHUNK_SIZE) {
            if ((ret = handle_chunk_size(s, &pkt)) < 0) {
                ff_rtmp_packet_destroy(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_CTRL_ABORT_MESSAGE) {
            av_log(s, AV_LOG_ERROR, "received abort message\n");
            ff_rtmp_packet_destroy(&pkt);
            return AVERROR_UNKNOWN;
        } else if (pkt.type == RTMP_PT_BYTES_READ) {
            av_log(s, AV_LOG_TRACE, "received acknowledgement\n");
        } else if (pkt.type == RTMP_PT_WINDOW_ACK_SIZE) {
            if ((ret = handle_window_ack_size(s, &pkt)) < 0) {
                ff_rtmp_packet_destroy(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_PT_SET_PEER_BW) {
            if ((ret = handle_set_peer_bw(s, &pkt)) < 0) {
                ff_rtmp_packet_destroy(&pkt);
                return ret;
            }
        } else if (pkt.type == RTMP_PT_INVOKE) {

            break;
        } else {
            av_log(s, AV_LOG_ERROR, "Unknown control message type (%d)\n", pkt.type);
        }
        ff_rtmp_packet_destroy(&pkt);
    }

    cp = pkt.data;
    bytestream2_init(&gbc, cp, pkt.size);
    if (ff_amf_read_string(&gbc, command, sizeof(command), &stringlen)) {
        av_log(s, AV_LOG_ERROR, "Unable to read command string\n");
        ff_rtmp_packet_destroy(&pkt);
        return AVERROR_INVALIDDATA;
    }
    if (strcmp(command, "connect")) {
        av_log(s, AV_LOG_ERROR, "Expecting connect, got %s\n", command);
        ff_rtmp_packet_destroy(&pkt);
        return AVERROR_INVALIDDATA;
    }
    ret = ff_amf_read_number(&gbc, &seqnum);
    if (ret)
        av_log(s, AV_LOG_WARNING, "SeqNum not found\n");

    ret = ff_amf_get_field_value(gbc.buffer,
                                 gbc.buffer + bytestream2_get_bytes_left(&gbc),
                                 "app", tmpstr, sizeof(tmpstr));
    if (ret)
        av_log(s, AV_LOG_WARNING, "App field not found in connect\n");
    if (!ret && strcmp(tmpstr, rt->app))
        av_log(s, AV_LOG_WARNING, "App field don't match up: %s <-> %s\n",
               tmpstr, rt->app);
    ff_rtmp_packet_destroy(&pkt);


    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_WINDOW_ACK_SIZE, 0, 4)) < 0)
        return ret;
    p = pkt.data;


    bytestream_put_be32(&p, rt->max_sent_unacked);
    pkt.size = p - pkt.data;
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);
    if (ret < 0)
        return ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_SET_PEER_BW, 0, 5)) < 0)
        return ret;
    p = pkt.data;


    bytestream_put_be32(&p, rt->max_sent_unacked);
    bytestream_put_byte(&p, 2);
    pkt.size = p - pkt.data;
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);
    if (ret < 0)
        return ret;


    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_USER_CONTROL, 0, 6)) < 0)
        return ret;

    p = pkt.data;
    bytestream_put_be16(&p, 0);
    bytestream_put_be32(&p, 0);
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);
    if (ret < 0)
        return ret;


    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_CHUNK_SIZE, 0, 4)) < 0)
        return ret;

    p = pkt.data;
    bytestream_put_be32(&p, rt->out_chunk_size);
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);
    if (ret < 0)
        return ret;


    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0,
                                     RTMP_PKTDATA_DEFAULT_SIZE)) < 0)
        return ret;

    p = pkt.data;
    ff_amf_write_string(&p, "_result");
    ff_amf_write_number(&p, seqnum);

    ff_amf_write_object_start(&p);
    ff_amf_write_field_name(&p, "fmsVer");
    ff_amf_write_string(&p, "FMS/3,0,1,123");
    ff_amf_write_field_name(&p, "capabilities");
    ff_amf_write_number(&p, 31);
    ff_amf_write_object_end(&p);

    ff_amf_write_object_start(&p);
    ff_amf_write_field_name(&p, "level");
    ff_amf_write_string(&p, "status");
    ff_amf_write_field_name(&p, "code");
    ff_amf_write_string(&p, "NetConnection.Connect.Success");
    ff_amf_write_field_name(&p, "description");
    ff_amf_write_string(&p, "Connection succeeded.");
    ff_amf_write_field_name(&p, "objectEncoding");
    ff_amf_write_number(&p, 0);
    ff_amf_write_object_end(&p);

    pkt.size = p - pkt.data;
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);
    if (ret < 0)
        return ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_SYSTEM_CHANNEL,
                                     RTMP_PT_INVOKE, 0, 30)) < 0)
        return ret;
    p = pkt.data;
    ff_amf_write_string(&p, "onBWDone");
    ff_amf_write_number(&p, 0);
    ff_amf_write_null(&p);
    ff_amf_write_number(&p, 8192);
    pkt.size = p - pkt.data;
    ret = ff_rtmp_packet_write(rt->stream, &pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
    ff_rtmp_packet_destroy(&pkt);

    return ret;
}
