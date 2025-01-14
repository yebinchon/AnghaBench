
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {int verify; int host; scalar_t__ cert_file; scalar_t__ ca_file; scalar_t__ listen; } ;
struct TYPE_14__ {int ca_array; int ssl_context; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef scalar_t__ SecTrustResultType ;
typedef scalar_t__ SecTrustRef ;
typedef scalar_t__ OSStatus ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int CFRelease (scalar_t__) ;
 int CHECK_ERROR (int ,int ,TYPE_1__*,...) ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ SSLCopyPeerTrust (int ,scalar_t__*) ;
 int SSLCreateContext (int *,int ,int ) ;
 scalar_t__ SSLHandshake (int ) ;
 int SSLSetConnection ;
 int SSLSetIOFuncs ;
 int SSLSetPeerDomainName ;
 int SSLSetSessionOption ;
 scalar_t__ SecTrustEvaluate (scalar_t__,scalar_t__*) ;
 scalar_t__ SecTrustSetAnchorCertificates (scalar_t__,int ) ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 scalar_t__ errSSLBadCert ;
 scalar_t__ errSSLServerAuthCompleted ;
 scalar_t__ errSSLWouldBlock ;
 scalar_t__ errSSLXCertChainInvalid ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int kSSLClientSide ;
 int kSSLServerSide ;
 int kSSLSessionOptionBreakOnServerAuth ;
 int kSSLStreamType ;
 scalar_t__ kSecTrustResultProceed ;
 scalar_t__ kSecTrustResultRecoverableTrustFailure ;
 scalar_t__ kSecTrustResultUnspecified ;
 int load_ca (TYPE_1__*) ;
 int load_cert (TYPE_1__*) ;
 scalar_t__ noErr ;
 int strlen (int ) ;
 int tls_close (TYPE_1__*) ;
 int tls_read_cb ;
 int tls_write_cb ;

__attribute__((used)) static int tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    int ret;

    if ((ret = ff_tls_open_underlying(s, h, uri, options)) < 0)
        goto fail;

    c->ssl_context = SSLCreateContext(((void*)0), s->listen ? kSSLServerSide : kSSLClientSide, kSSLStreamType);
    if (!c->ssl_context) {
        av_log(h, AV_LOG_ERROR, "Unable to create SSL context\n");
        ret = AVERROR(ENOMEM);
        goto fail;
    }
    if (s->ca_file) {
        if ((ret = load_ca(h)) < 0)
            goto fail;
    }
    if (s->ca_file || !s->verify)
        CHECK_ERROR(SSLSetSessionOption, c->ssl_context, kSSLSessionOptionBreakOnServerAuth, 1);
    if (s->cert_file)
        if ((ret = load_cert(h)) < 0)
            goto fail;
    CHECK_ERROR(SSLSetPeerDomainName, c->ssl_context, s->host, strlen(s->host));
    CHECK_ERROR(SSLSetIOFuncs, c->ssl_context, tls_read_cb, tls_write_cb);
    CHECK_ERROR(SSLSetConnection, c->ssl_context, h);
    while (1) {
        OSStatus status = SSLHandshake(c->ssl_context);
        if (status == errSSLServerAuthCompleted) {
            SecTrustRef peerTrust;
            SecTrustResultType trustResult;
            if (!s->verify)
                continue;

            if (SSLCopyPeerTrust(c->ssl_context, &peerTrust) != noErr) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }

            if (SecTrustSetAnchorCertificates(peerTrust, c->ca_array) != noErr) {
                ret = AVERROR_UNKNOWN;
                goto fail;
            }

            if (SecTrustEvaluate(peerTrust, &trustResult) != noErr) {
                ret = AVERROR_UNKNOWN;
                goto fail;
            }

            if (trustResult == kSecTrustResultProceed ||
                trustResult == kSecTrustResultUnspecified) {

                status = errSSLWouldBlock;
            } else if (trustResult == kSecTrustResultRecoverableTrustFailure) {

                status = errSSLXCertChainInvalid;
            } else {

                status = errSSLBadCert;
            }

            if (peerTrust)
                CFRelease(peerTrust);
        }
        if (status == noErr) {
            break;
        } else if (status != errSSLWouldBlock) {
            av_log(h, AV_LOG_ERROR, "Unable to negotiate TLS/SSL session: %i\n", (int)status);
            ret = AVERROR(EIO);
            goto fail;
        }
    }

    return 0;
fail:
    tls_close(h);
    return ret;
}
