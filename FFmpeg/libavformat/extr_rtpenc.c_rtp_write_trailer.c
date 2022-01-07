
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pb; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int flags; int buf; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int FF_RTP_FLAG_SEND_BYE ;
 int av_freep (int *) ;
 int ff_ntp_time () ;
 int rtcp_send_sr (TYPE_2__*,int ,int) ;

__attribute__((used)) static int rtp_write_trailer(AVFormatContext *s1)
{
    RTPMuxContext *s = s1->priv_data;



    if (s1->pb && (s->flags & FF_RTP_FLAG_SEND_BYE))
        rtcp_send_sr(s1, ff_ntp_time(), 1);
    av_freep(&s->buf);

    return 0;
}
