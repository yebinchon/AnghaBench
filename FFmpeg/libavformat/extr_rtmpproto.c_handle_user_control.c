
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_14__ {scalar_t__ swfsize; } ;
struct TYPE_13__ {int size; int data; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_RB16 (int ) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int gen_pong (TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 int gen_swf_verification (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static int handle_user_control(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    int t, ret;

    if (pkt->size < 2) {
        av_log(s, AV_LOG_ERROR, "Too short user control packet (%d)\n",
               pkt->size);
        return AVERROR_INVALIDDATA;
    }

    t = AV_RB16(pkt->data);
    if (t == 6) {
        if ((ret = gen_pong(s, rt, pkt)) < 0)
            return ret;
    } else if (t == 26) {
        if (rt->swfsize) {
            if ((ret = gen_swf_verification(s, rt)) < 0)
                return ret;
        } else {
            av_log(s, AV_LOG_WARNING, "Ignoring SWFVerification request.\n");
        }
    }

    return 0;
}
