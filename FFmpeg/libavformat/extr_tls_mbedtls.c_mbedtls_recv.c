
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t max_packet_size; } ;
typedef TYPE_1__ URLContext ;


 int MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int ffurl_read (TYPE_1__*,unsigned char*,size_t) ;
 int handle_transport_error (TYPE_1__*,char*,int ,int) ;

__attribute__((used)) static int mbedtls_recv(void *ctx, unsigned char *buf, size_t len)
{
    URLContext *h = (URLContext*) ctx;
    int ret = ffurl_read(h, buf, len);
    if (ret >= 0)
        return ret;

    if (h->max_packet_size && len > h->max_packet_size)
        return MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL;

    return handle_transport_error(h, "ffurl_read", MBEDTLS_ERR_SSL_WANT_READ, ret);
}
