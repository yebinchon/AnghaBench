
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int flags; TYPE_4__* priv_data; } ;
typedef TYPE_3__ URLContext ;
struct TYPE_8__ {TYPE_1__* tcp; } ;
struct TYPE_10__ {int ssl; TYPE_2__ tls_shared; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_4__ TLSContext ;


 int AVERROR_EOF ;
 int AVIO_FLAG_NONBLOCK ;
 int SSL_write (int ,int const*,int) ;
 int print_tls_error (TYPE_3__*,int) ;

__attribute__((used)) static int tls_write(URLContext *h, const uint8_t *buf, int size)
{
    TLSContext *c = h->priv_data;
    int ret;

    c->tls_shared.tcp->flags &= ~AVIO_FLAG_NONBLOCK;
    c->tls_shared.tcp->flags |= h->flags & AVIO_FLAG_NONBLOCK;
    ret = SSL_write(c->ssl, buf, size);
    if (ret > 0)
        return ret;
    if (ret == 0)
        return AVERROR_EOF;
    return print_tls_error(h, ret);
}
