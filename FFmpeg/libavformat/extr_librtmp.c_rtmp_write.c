
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int rtmp; } ;
typedef int RTMP ;
typedef TYPE_2__ LibRTMPContext ;


 int AVERROR_EOF ;
 int RTMP_Write (int *,int const*,int) ;

__attribute__((used)) static int rtmp_write(URLContext *s, const uint8_t *buf, int size)
{
    LibRTMPContext *ctx = s->priv_data;
    RTMP *r = &ctx->rtmp;

    int ret = RTMP_Write(r, buf, size);
    if (!ret)
        return AVERROR_EOF;
    return ret;
}
