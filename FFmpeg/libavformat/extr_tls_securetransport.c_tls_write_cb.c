
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_4__ {int tcp; } ;
struct TYPE_6__ {int lastErr; TYPE_1__ tls_shared; } ;
typedef TYPE_3__ TLSContext ;
typedef scalar_t__ SSLConnectionRef ;
typedef int OSStatus ;


 int AVUNERROR (int) ;

 int errSSLWouldBlock ;
 int ffurl_write (int ,void const*,size_t) ;
 int ioErr ;
 int noErr ;

__attribute__((used)) static OSStatus tls_write_cb(SSLConnectionRef connection, const void *data, size_t *dataLength)
{
    URLContext *h = (URLContext*)connection;
    TLSContext *c = h->priv_data;
    int written = ffurl_write(c->tls_shared.tcp, data, *dataLength);
    if (written <= 0) {
        *dataLength = 0;
        switch(AVUNERROR(written)) {
            case 128:
                return errSSLWouldBlock;
            default:
                c->lastErr = written;
                return ioErr;
        }
    } else {
        *dataLength = written;
        return noErr;
    }
}
