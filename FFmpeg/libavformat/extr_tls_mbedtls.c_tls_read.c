
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


 int handle_tls_error (TYPE_1__*,char*,int) ;
 int mbedtls_ssl_read (int *,int *,int) ;

__attribute__((used)) static int tls_read(URLContext *h, uint8_t *buf, int size)
{
    TLSContext *tls_ctx = h->priv_data;
    int ret;

    if ((ret = mbedtls_ssl_read(&tls_ctx->ssl_context, buf, size)) > 0) {

        return ret;
    }

    return handle_tls_error(h, "mbedtls_ssl_read", ret);
}
