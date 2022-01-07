
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int stream; int key_out; scalar_t__ handshaked; } ;
typedef TYPE_2__ RTMPEContext ;


 int av_rc4_crypt (int *,int *,int const*,int,int *,int) ;
 int ffurl_write (int ,int const*,int) ;

__attribute__((used)) static int rtmpe_write(URLContext *h, const uint8_t *buf, int size)
{
    RTMPEContext *rt = h->priv_data;
    int ret;

    if (rt->handshaked) {

        av_rc4_crypt(&rt->key_out, (uint8_t *)buf, buf, size, ((void*)0), 1);
    }

    if ((ret = ffurl_write(rt->stream, buf, size)) < 0)
        return ret;

    return size;
}
