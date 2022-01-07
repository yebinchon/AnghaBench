
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_6__ {int key_file; int cert_file; } ;
struct TYPE_8__ {int ssl_context; TYPE_1__ tls_shared; } ;
typedef TYPE_3__ TLSContext ;
typedef int SecKeyRef ;
typedef int * SecIdentityRef ;
typedef int SecCertificateRef ;
typedef int * CFMutableArrayRef ;
typedef int * CFArrayRef ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int * CFArrayCreateMutableCopy (int ,int ,int *) ;
 scalar_t__ CFArrayGetValueAtIndex (int *,int ) ;
 int CFArraySetValueAtIndex (int *,int ,int *) ;
 int CFRelease (int *) ;
 int ENOMEM ;
 int SSLSetCertificate (int ,int *) ;
 int * SecIdentityCreate (int ,int ,int ) ;
 int import_pem (TYPE_2__*,int ,int **) ;
 int kCFAllocatorDefault ;

__attribute__((used)) static int load_cert(URLContext *h)
{
    TLSContext *c = h->priv_data;
    int ret = 0;
    CFArrayRef certArray = ((void*)0);
    CFArrayRef keyArray = ((void*)0);
    SecIdentityRef id = ((void*)0);
    CFMutableArrayRef outArray = ((void*)0);

    if ((ret = import_pem(h, c->tls_shared.cert_file, &certArray)) < 0)
        goto end;

    if ((ret = import_pem(h, c->tls_shared.key_file, &keyArray)) < 0)
        goto end;

    if (!(id = SecIdentityCreate(kCFAllocatorDefault,
                                 (SecCertificateRef)CFArrayGetValueAtIndex(certArray, 0),
                                 (SecKeyRef)CFArrayGetValueAtIndex(keyArray, 0)))) {
        ret = AVERROR_UNKNOWN;
        goto end;
    }

    if (!(outArray = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, certArray))) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    CFArraySetValueAtIndex(outArray, 0, id);

    SSLSetCertificate(c->ssl_context, outArray);

end:
    if (certArray)
        CFRelease(certArray);
    if (keyArray)
        CFRelease(keyArray);
    if (outArray)
        CFRelease(outArray);
    if (id)
        CFRelease(id);
    return ret;
}
