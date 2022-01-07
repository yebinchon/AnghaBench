
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ aes; } ;
struct TYPE_6__ {TYPE_4__ srtp_in; int rtp_hd; } ;
typedef TYPE_2__ SRTPProtoContext ;


 scalar_t__ ff_srtp_decrypt (TYPE_4__*,int *,int*) ;
 int ffurl_read (int ,int *,int) ;

__attribute__((used)) static int srtp_read(URLContext *h, uint8_t *buf, int size)
{
    SRTPProtoContext *s = h->priv_data;
    int ret;
start:
    ret = ffurl_read(s->rtp_hd, buf, size);
    if (ret > 0 && s->srtp_in.aes) {
        if (ff_srtp_decrypt(&s->srtp_in, buf, &ret) < 0)
            goto start;
    }
    return ret;
}
