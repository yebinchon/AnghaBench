
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int * priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_15__ {int size; int data; } ;
typedef TYPE_2__ RTMPPacket ;
typedef int RTMPContext ;


 scalar_t__ ff_amf_match_string (int ,int ,char*) ;
 int gen_check_bw (TYPE_1__*,int *) ;
 int handle_invoke_error (TYPE_1__*,TYPE_2__*) ;
 int handle_invoke_result (TYPE_1__*,TYPE_2__*) ;
 int handle_invoke_status (TYPE_1__*,TYPE_2__*) ;
 int send_invoke_response (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int handle_invoke(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    int ret = 0;


    if (ff_amf_match_string(pkt->data, pkt->size, "_error")) {
        if ((ret = handle_invoke_error(s, pkt)) < 0)
            return ret;
    } else if (ff_amf_match_string(pkt->data, pkt->size, "_result")) {
        if ((ret = handle_invoke_result(s, pkt)) < 0)
            return ret;
    } else if (ff_amf_match_string(pkt->data, pkt->size, "onStatus")) {
        if ((ret = handle_invoke_status(s, pkt)) < 0)
            return ret;
    } else if (ff_amf_match_string(pkt->data, pkt->size, "onBWDone")) {
        if ((ret = gen_check_bw(s, rt)) < 0)
            return ret;
    } else if (ff_amf_match_string(pkt->data, pkt->size, "releaseStream") ||
               ff_amf_match_string(pkt->data, pkt->size, "FCPublish") ||
               ff_amf_match_string(pkt->data, pkt->size, "publish") ||
               ff_amf_match_string(pkt->data, pkt->size, "play") ||
               ff_amf_match_string(pkt->data, pkt->size, "_checkbw") ||
               ff_amf_match_string(pkt->data, pkt->size, "createStream")) {
        if ((ret = send_invoke_response(s, pkt)) < 0)
            return ret;
    }

    return ret;
}
