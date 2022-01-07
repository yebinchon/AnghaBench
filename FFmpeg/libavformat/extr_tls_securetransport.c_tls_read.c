
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_6__ {int ssl_context; } ;
typedef TYPE_2__ TLSContext ;


 int AVERROR_EOF ;
 int FFMIN (size_t,int) ;
 int SSLGetBufferedReadSize (int ,size_t*) ;
 int SSLRead (int ,int *,int,size_t*) ;
 int map_ssl_error (int,size_t) ;
 int print_tls_error (TYPE_1__*,int) ;

__attribute__((used)) static int tls_read(URLContext *h, uint8_t *buf, int size)
{
    TLSContext *c = h->priv_data;
    size_t available = 0, processed = 0;
    int ret;
    SSLGetBufferedReadSize(c->ssl_context, &available);
    if (available)
        size = FFMIN(available, size);
    ret = SSLRead(c->ssl_context, buf, size, &processed);
    ret = map_ssl_error(ret, processed);
    if (ret > 0)
        return ret;
    if (ret == 0)
        return AVERROR_EOF;
    return print_tls_error(h, ret);
}
