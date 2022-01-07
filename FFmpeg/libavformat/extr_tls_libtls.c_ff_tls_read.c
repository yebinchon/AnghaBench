
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int ctx; } ;
typedef TYPE_2__ TLSContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EIO ;
 int av_log (TYPE_1__*,int ,char*,int ) ;
 int tls_error (int ) ;
 scalar_t__ tls_read (int ,int *,int) ;

__attribute__((used)) static int ff_tls_read(URLContext *h, uint8_t *buf, int size)
{
    TLSContext *p = h->priv_data;
    ssize_t ret;
    ret = tls_read(p->ctx, buf, size);
    if (ret > 0)
        return ret;
    else if (ret == 0)
        return AVERROR_EOF;
    av_log(h, AV_LOG_ERROR, "%s\n", tls_error(p->ctx));
    return AVERROR(EIO);
}
