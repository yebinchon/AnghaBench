
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



 int errSSLClosedAbort ;
 int errSSLClosedGraceful ;
 int errSSLWouldBlock ;
 int ffurl_read (int ,void*,size_t) ;
 int ioErr ;
 int noErr ;

__attribute__((used)) static OSStatus tls_read_cb(SSLConnectionRef connection, void *data, size_t *dataLength)
{
    URLContext *h = (URLContext*)connection;
    TLSContext *c = h->priv_data;
    size_t requested = *dataLength;
    int read = ffurl_read(c->tls_shared.tcp, data, requested);
    if (read <= 0) {
        *dataLength = 0;
        switch(AVUNERROR(read)) {
            case 128:
            case 0:
                return errSSLClosedGraceful;
            case 129:
                return errSSLClosedAbort;
            case 130:
                return errSSLWouldBlock;
            default:
                c->lastErr = read;
                return ioErr;
        }
    } else {
        *dataLength = read;
        if (read < requested)
            return errSSLWouldBlock;
        else
            return noErr;
    }
}
