
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int URLContext ;
struct TYPE_9__ {int type; } ;
typedef TYPE_1__ RTMPPacket ;
typedef int RTMPContext ;


 int AV_LOG_TRACE ;
 int AV_LOG_VERBOSE ;
 int av_log (int *,int ,char*,...) ;
 int ff_rtmp_packet_dump (int *,TYPE_1__*) ;
 int handle_chunk_size (int *,TYPE_1__*) ;
 int handle_invoke (int *,TYPE_1__*) ;
 int handle_set_peer_bw (int *,TYPE_1__*) ;
 int handle_user_control (int *,TYPE_1__*) ;
 int handle_window_ack_size (int *,TYPE_1__*) ;

__attribute__((used)) static int rtmp_parse_result(URLContext *s, RTMPContext *rt, RTMPPacket *pkt)
{
    int ret;





    switch (pkt->type) {
    case 136:
        av_log(s, AV_LOG_TRACE, "received bytes read report\n");
        break;
    case 135:
        if ((ret = handle_chunk_size(s, pkt)) < 0)
            return ret;
        break;
    case 130:
        if ((ret = handle_user_control(s, pkt)) < 0)
            return ret;
        break;
    case 131:
        if ((ret = handle_set_peer_bw(s, pkt)) < 0)
            return ret;
        break;
    case 128:
        if ((ret = handle_window_ack_size(s, pkt)) < 0)
            return ret;
        break;
    case 134:
        if ((ret = handle_invoke(s, pkt)) < 0)
            return ret;
        break;
    case 129:
    case 137:
    case 133:
    case 132:

        break;
    default:
        av_log(s, AV_LOG_VERBOSE, "Unknown packet type received 0x%02X\n", pkt->type);
        break;
    }
    return 0;
}
