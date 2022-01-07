
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int srtp; } ;
typedef TYPE_1__ RTPDemuxContext ;


 int av_free (TYPE_1__*) ;
 int ff_rtp_reset_packet_queue (TYPE_1__*) ;
 int ff_srtp_free (int *) ;

void ff_rtp_parse_close(RTPDemuxContext *s)
{
    ff_rtp_reset_packet_queue(s);
    ff_srtp_free(&s->srtp);
    av_free(s);
}
