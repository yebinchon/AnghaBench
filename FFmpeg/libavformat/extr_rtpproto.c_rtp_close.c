
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int fec_hd; int rtcp_hd; int rtp_hd; int filters; } ;
typedef TYPE_2__ RTPContext ;


 int ff_ip_reset_filters (int *) ;
 int ffurl_close (int ) ;
 int ffurl_closep (int *) ;

__attribute__((used)) static int rtp_close(URLContext *h)
{
    RTPContext *s = h->priv_data;

    ff_ip_reset_filters(&s->filters);

    ffurl_close(s->rtp_hd);
    ffurl_close(s->rtcp_hd);
    ffurl_closep(&s->fec_hd);
    return 0;
}
