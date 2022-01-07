
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int * rtp_hd; int srtp_in; int srtp_out; } ;
typedef TYPE_2__ SRTPProtoContext ;


 int ff_srtp_free (int *) ;
 int ffurl_close (int *) ;

__attribute__((used)) static int srtp_close(URLContext *h)
{
    SRTPProtoContext *s = h->priv_data;
    ff_srtp_free(&s->srtp_out);
    ff_srtp_free(&s->srtp_in);
    ffurl_close(s->rtp_hd);
    s->rtp_hd = ((void*)0);
    return 0;
}
