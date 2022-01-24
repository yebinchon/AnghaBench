#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;
typedef  int /*<<< orphan*/  gnutls_datum_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_11__ {int /*<<< orphan*/  host; scalar_t__ verify; int /*<<< orphan*/  tcp; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; int /*<<< orphan*/  numerichost; scalar_t__ listen; } ;
struct TYPE_12__ {int need_shutdown; int /*<<< orphan*/  session; int /*<<< orphan*/  cred; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 unsigned int GNUTLS_CERT_INVALID ; 
 int /*<<< orphan*/  GNUTLS_CLIENT ; 
 int /*<<< orphan*/  GNUTLS_CRD_CERTIFICATE ; 
 scalar_t__ GNUTLS_CRT_X509 ; 
 int /*<<< orphan*/  GNUTLS_NAME_DNS ; 
 int /*<<< orphan*/  GNUTLS_SERVER ; 
 int /*<<< orphan*/  GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT ; 
 int /*<<< orphan*/  GNUTLS_X509_FMT_DER ; 
 int /*<<< orphan*/  GNUTLS_X509_FMT_PEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gnutls_url_pull ; 
 int /*<<< orphan*/  gnutls_url_push ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC29(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    int ret;

    FUNC2();

    if ((ret = FUNC3(c, h, uri, options)) < 0)
        goto fail;

    FUNC15(&p->session, c->listen ? GNUTLS_SERVER : GNUTLS_CLIENT);
    if (!c->listen && !c->numerichost)
        FUNC17(p->session, GNUTLS_NAME_DNS, c->host, FUNC27(c->host));
    FUNC4(&p->cred);
    if (c->ca_file) {
        ret = FUNC9(p->cred, c->ca_file, GNUTLS_X509_FMT_PEM);
        if (ret < 0)
            FUNC1(h, AV_LOG_ERROR, "%s\n", FUNC18(ret));
    }
#if GNUTLS_VERSION_NUMBER >= 0x030020
    else
        gnutls_certificate_set_x509_system_trust(p->cred);
#endif
    FUNC6(p->cred, c->verify ?
                                        GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT : 0);
    if (c->cert_file && c->key_file) {
        ret = FUNC7(p->cred,
                                                   c->cert_file, c->key_file,
                                                   GNUTLS_X509_FMT_PEM);
        if (ret < 0) {
            FUNC1(h, AV_LOG_ERROR,
                   "Unable to set cert/key files %s and %s: %s\n",
                   c->cert_file, c->key_file, FUNC18(ret));
            ret = FUNC0(EIO);
            goto fail;
        }
    } else if (c->cert_file || c->key_file)
        FUNC1(h, AV_LOG_ERROR, "cert and key required\n");
    FUNC12(p->session, GNUTLS_CRD_CERTIFICATE, p->cred);
    FUNC20(p->session, gnutls_url_pull);
    FUNC21(p->session, gnutls_url_push);
    FUNC19(p->session, c->tcp);
    FUNC16(p->session, "NORMAL", NULL);
    do {
        ret = FUNC14(p->session);
        if (FUNC13(ret)) {
            ret = FUNC26(h, ret);
            goto fail;
        }
    } while (ret);
    p->need_shutdown = 1;
    if (c->verify) {
        unsigned int status, cert_list_size;
        gnutls_x509_crt_t cert;
        const gnutls_datum_t *cert_list;
        if ((ret = FUNC11(p->session, &status)) < 0) {
            FUNC1(h, AV_LOG_ERROR, "Unable to verify peer certificate: %s\n",
                                    FUNC18(ret));
            ret = FUNC0(EIO);
            goto fail;
        }
        if (status & GNUTLS_CERT_INVALID) {
            FUNC1(h, AV_LOG_ERROR, "Peer certificate failed verification\n");
            ret = FUNC0(EIO);
            goto fail;
        }
        if (FUNC10(p->session) != GNUTLS_CRT_X509) {
            FUNC1(h, AV_LOG_ERROR, "Unsupported certificate type\n");
            ret = FUNC0(EIO);
            goto fail;
        }
        FUNC25(&cert);
        cert_list = FUNC5(p->session, &cert_list_size);
        FUNC24(cert, cert_list, GNUTLS_X509_FMT_DER);
        ret = FUNC22(cert, c->host);
        FUNC23(cert);
        if (!ret) {
            FUNC1(h, AV_LOG_ERROR,
                   "The certificate's owner does not match hostname %s\n", c->host);
            ret = FUNC0(EIO);
            goto fail;
        }
    }

    return 0;
fail:
    FUNC28(h);
    return ret;
}