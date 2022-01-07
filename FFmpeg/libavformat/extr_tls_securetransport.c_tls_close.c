
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_5__ {scalar_t__ tcp; } ;
struct TYPE_7__ {TYPE_1__ tls_shared; scalar_t__ ca_array; scalar_t__ ssl_context; } ;
typedef TYPE_3__ TLSContext ;


 int CFRelease (scalar_t__) ;
 int SSLClose (scalar_t__) ;
 int ffurl_close (scalar_t__) ;

__attribute__((used)) static int tls_close(URLContext *h)
{
    TLSContext *c = h->priv_data;
    if (c->ssl_context) {
        SSLClose(c->ssl_context);
        CFRelease(c->ssl_context);
    }
    if (c->ca_array)
        CFRelease(c->ca_array);
    if (c->tls_shared.tcp)
        ffurl_close(c->tls_shared.tcp);
    return 0;
}
