
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int lastErr; } ;
typedef TYPE_2__ TLSContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int EIO ;
 int av_log (TYPE_1__*,int ,char*,...) ;




__attribute__((used)) static int print_tls_error(URLContext *h, int ret)
{
    TLSContext *c = h->priv_data;
    switch (ret) {
    case 130:
        return AVERROR(EAGAIN);
    case 129:
        av_log(h, AV_LOG_ERROR, "Invalid certificate chain\n");
        return AVERROR(EIO);
    case 128:
        return c->lastErr;
    default:
        av_log(h, AV_LOG_ERROR, "IO Error: %i\n", ret);
        return AVERROR(EIO);
    }
    return AVERROR(EIO);
}
