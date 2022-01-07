
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
struct TYPE_7__ {int aes; } ;
struct TYPE_6__ {int const* encryptbuf; int rtp_hd; TYPE_4__ srtp_out; } ;
typedef TYPE_2__ SRTPProtoContext ;


 int ff_srtp_encrypt (TYPE_4__*,int const*,int,int const*,int) ;
 int ffurl_write (int ,int const*,int) ;

__attribute__((used)) static int srtp_write(URLContext *h, const uint8_t *buf, int size)
{
    SRTPProtoContext *s = h->priv_data;
    if (!s->srtp_out.aes)
        return ffurl_write(s->rtp_hd, buf, size);
    size = ff_srtp_encrypt(&s->srtp_out, buf, size, s->encryptbuf,
                           sizeof(s->encryptbuf));
    if (size < 0)
        return size;
    return ffurl_write(s->rtp_hd, s->encryptbuf, size);
}
