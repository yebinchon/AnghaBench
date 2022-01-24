#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_13__ {int /*<<< orphan*/  verify; int /*<<< orphan*/  host; scalar_t__ cert_file; scalar_t__ ca_file; scalar_t__ listen; } ;
struct TYPE_14__ {int /*<<< orphan*/  ca_array; int /*<<< orphan*/  ssl_context; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  scalar_t__ SecTrustResultType ;
typedef  scalar_t__ SecTrustRef ;
typedef  scalar_t__ OSStatus ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,...) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSLSetConnection ; 
 int /*<<< orphan*/  SSLSetIOFuncs ; 
 int /*<<< orphan*/  SSLSetPeerDomainName ; 
 int /*<<< orphan*/  SSLSetSessionOption ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errSSLBadCert ; 
 scalar_t__ errSSLServerAuthCompleted ; 
 scalar_t__ errSSLWouldBlock ; 
 scalar_t__ errSSLXCertChainInvalid ; 
 int FUNC9 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  kSSLClientSide ; 
 int /*<<< orphan*/  kSSLServerSide ; 
 int /*<<< orphan*/  kSSLSessionOptionBreakOnServerAuth ; 
 int /*<<< orphan*/  kSSLStreamType ; 
 scalar_t__ kSecTrustResultProceed ; 
 scalar_t__ kSecTrustResultRecoverableTrustFailure ; 
 scalar_t__ kSecTrustResultUnspecified ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 
 scalar_t__ noErr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  tls_read_cb ; 
 int /*<<< orphan*/  tls_write_cb ; 

__attribute__((used)) static int FUNC14(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *c = h->priv_data;
    TLSShared *s = &c->tls_shared;
    int ret;

    if ((ret = FUNC9(s, h, uri, options)) < 0)
        goto fail;

    c->ssl_context = FUNC4(NULL, s->listen ? kSSLServerSide : kSSLClientSide, kSSLStreamType);
    if (!c->ssl_context) {
        FUNC8(h, AV_LOG_ERROR, "Unable to create SSL context\n");
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    if (s->ca_file) {
        if ((ret = FUNC10(h)) < 0)
            goto fail;
    }
    if (s->ca_file || !s->verify)
        FUNC2(SSLSetSessionOption, c->ssl_context, kSSLSessionOptionBreakOnServerAuth, true);
    if (s->cert_file)
        if ((ret = FUNC11(h)) < 0)
            goto fail;
    FUNC2(SSLSetPeerDomainName, c->ssl_context, s->host, FUNC12(s->host));
    FUNC2(SSLSetIOFuncs, c->ssl_context, tls_read_cb, tls_write_cb);
    FUNC2(SSLSetConnection, c->ssl_context, h);
    while (1) {
        OSStatus status = FUNC5(c->ssl_context);
        if (status == errSSLServerAuthCompleted) {
            SecTrustRef peerTrust;
            SecTrustResultType trustResult;
            if (!s->verify)
                continue;

            if (FUNC3(c->ssl_context, &peerTrust) != noErr) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }

            if (FUNC7(peerTrust, c->ca_array) != noErr) {
                ret = AVERROR_UNKNOWN;
                goto fail;
            }

            if (FUNC6(peerTrust, &trustResult) != noErr) {
                ret = AVERROR_UNKNOWN;
                goto fail;
            }

            if (trustResult == kSecTrustResultProceed ||
                trustResult == kSecTrustResultUnspecified) {
                // certificate is trusted
                status = errSSLWouldBlock; // so we call SSLHandshake again
            } else if (trustResult == kSecTrustResultRecoverableTrustFailure) {
                // not trusted, for some reason other than being expired
                status = errSSLXCertChainInvalid;
            } else {
                // cannot use this certificate (fatal)
                status = errSSLBadCert;
            }

            if (peerTrust)
                FUNC1(peerTrust);
        }
        if (status == noErr) {
            break;
        } else if (status != errSSLWouldBlock) {
            FUNC8(h, AV_LOG_ERROR, "Unable to negotiate TLS/SSL session: %i\n", (int)status);
            ret = FUNC0(EIO);
            goto fail;
        }
    }

    return 0;
fail:
    FUNC13(h);
    return ret;
}