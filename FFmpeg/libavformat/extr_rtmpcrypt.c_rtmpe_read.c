
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int key_in; scalar_t__ handshaked; TYPE_4__* stream; } ;
typedef TYPE_2__ RTMPEContext ;


 int AVERROR_EOF ;
 int AVIO_FLAG_NONBLOCK ;
 int av_rc4_crypt (int *,int *,int *,int,int *,int) ;
 int ffurl_read (TYPE_4__*,int *,int) ;

__attribute__((used)) static int rtmpe_read(URLContext *h, uint8_t *buf, int size)
{
    RTMPEContext *rt = h->priv_data;
    int ret;

    rt->stream->flags |= h->flags & AVIO_FLAG_NONBLOCK;
    ret = ffurl_read(rt->stream, buf, size);
    rt->stream->flags &= ~AVIO_FLAG_NONBLOCK;

    if (ret < 0 && ret != AVERROR_EOF)
        return ret;

    if (rt->handshaked && ret > 0) {

        av_rc4_crypt(&rt->key_in, buf, buf, ret, ((void*)0), 1);
    }

    return ret;
}
