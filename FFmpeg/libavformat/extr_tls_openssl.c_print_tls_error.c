
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int ssl; } ;
typedef TYPE_2__ TLSContext ;


 int AVERROR (int ) ;
 int AVIO_FLAG_NONBLOCK ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int EIO ;
 int ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int SSL_ERROR_WANT_READ ;
 int SSL_ERROR_WANT_WRITE ;
 int SSL_get_error (int ,int) ;
 int av_log (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static int print_tls_error(URLContext *h, int ret)
{
    TLSContext *c = h->priv_data;
    if (h->flags & AVIO_FLAG_NONBLOCK) {
        int err = SSL_get_error(c->ssl, ret);
        if (err == SSL_ERROR_WANT_READ || err == SSL_ERROR_WANT_WRITE)
            return AVERROR(EAGAIN);
    }
    av_log(h, AV_LOG_ERROR, "%s\n", ERR_error_string(ERR_get_error(), ((void*)0)));
    return AVERROR(EIO);
}
