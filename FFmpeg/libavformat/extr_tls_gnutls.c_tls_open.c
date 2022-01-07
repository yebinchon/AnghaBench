
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gnutls_x509_crt_t ;
typedef int gnutls_datum_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int host; scalar_t__ verify; int tcp; scalar_t__ key_file; scalar_t__ cert_file; scalar_t__ ca_file; int numerichost; scalar_t__ listen; } ;
struct TYPE_12__ {int need_shutdown; int session; int cred; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 unsigned int GNUTLS_CERT_INVALID ;
 int GNUTLS_CLIENT ;
 int GNUTLS_CRD_CERTIFICATE ;
 scalar_t__ GNUTLS_CRT_X509 ;
 int GNUTLS_NAME_DNS ;
 int GNUTLS_SERVER ;
 int GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT ;
 int GNUTLS_X509_FMT_DER ;
 int GNUTLS_X509_FMT_PEM ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ff_gnutls_init () ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int gnutls_certificate_allocate_credentials (int *) ;
 int * gnutls_certificate_get_peers (int ,unsigned int*) ;
 int gnutls_certificate_set_verify_flags (int ,int ) ;
 int gnutls_certificate_set_x509_key_file (int ,scalar_t__,scalar_t__,int ) ;
 int gnutls_certificate_set_x509_system_trust (int ) ;
 int gnutls_certificate_set_x509_trust_file (int ,scalar_t__,int ) ;
 scalar_t__ gnutls_certificate_type_get (int ) ;
 int gnutls_certificate_verify_peers2 (int ,unsigned int*) ;
 int gnutls_credentials_set (int ,int ,int ) ;
 scalar_t__ gnutls_error_is_fatal (int) ;
 int gnutls_handshake (int ) ;
 int gnutls_init (int *,int ) ;
 int gnutls_priority_set_direct (int ,char*,int *) ;
 int gnutls_server_name_set (int ,int ,int ,int ) ;
 int gnutls_strerror (int) ;
 int gnutls_transport_set_ptr (int ,int ) ;
 int gnutls_transport_set_pull_function (int ,int ) ;
 int gnutls_transport_set_push_function (int ,int ) ;
 int gnutls_url_pull ;
 int gnutls_url_push ;
 int gnutls_x509_crt_check_hostname (int ,int ) ;
 int gnutls_x509_crt_deinit (int ) ;
 int gnutls_x509_crt_import (int ,int const*,int ) ;
 int gnutls_x509_crt_init (int *) ;
 int print_tls_error (TYPE_1__*,int) ;
 int strlen (int ) ;
 int tls_close (TYPE_1__*) ;

__attribute__((used)) static int tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *p = h->priv_data;
    TLSShared *c = &p->tls_shared;
    int ret;

    ff_gnutls_init();

    if ((ret = ff_tls_open_underlying(c, h, uri, options)) < 0)
        goto fail;

    gnutls_init(&p->session, c->listen ? GNUTLS_SERVER : GNUTLS_CLIENT);
    if (!c->listen && !c->numerichost)
        gnutls_server_name_set(p->session, GNUTLS_NAME_DNS, c->host, strlen(c->host));
    gnutls_certificate_allocate_credentials(&p->cred);
    if (c->ca_file) {
        ret = gnutls_certificate_set_x509_trust_file(p->cred, c->ca_file, GNUTLS_X509_FMT_PEM);
        if (ret < 0)
            av_log(h, AV_LOG_ERROR, "%s\n", gnutls_strerror(ret));
    }




    gnutls_certificate_set_verify_flags(p->cred, c->verify ?
                                        GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT : 0);
    if (c->cert_file && c->key_file) {
        ret = gnutls_certificate_set_x509_key_file(p->cred,
                                                   c->cert_file, c->key_file,
                                                   GNUTLS_X509_FMT_PEM);
        if (ret < 0) {
            av_log(h, AV_LOG_ERROR,
                   "Unable to set cert/key files %s and %s: %s\n",
                   c->cert_file, c->key_file, gnutls_strerror(ret));
            ret = AVERROR(EIO);
            goto fail;
        }
    } else if (c->cert_file || c->key_file)
        av_log(h, AV_LOG_ERROR, "cert and key required\n");
    gnutls_credentials_set(p->session, GNUTLS_CRD_CERTIFICATE, p->cred);
    gnutls_transport_set_pull_function(p->session, gnutls_url_pull);
    gnutls_transport_set_push_function(p->session, gnutls_url_push);
    gnutls_transport_set_ptr(p->session, c->tcp);
    gnutls_priority_set_direct(p->session, "NORMAL", ((void*)0));
    do {
        ret = gnutls_handshake(p->session);
        if (gnutls_error_is_fatal(ret)) {
            ret = print_tls_error(h, ret);
            goto fail;
        }
    } while (ret);
    p->need_shutdown = 1;
    if (c->verify) {
        unsigned int status, cert_list_size;
        gnutls_x509_crt_t cert;
        const gnutls_datum_t *cert_list;
        if ((ret = gnutls_certificate_verify_peers2(p->session, &status)) < 0) {
            av_log(h, AV_LOG_ERROR, "Unable to verify peer certificate: %s\n",
                                    gnutls_strerror(ret));
            ret = AVERROR(EIO);
            goto fail;
        }
        if (status & GNUTLS_CERT_INVALID) {
            av_log(h, AV_LOG_ERROR, "Peer certificate failed verification\n");
            ret = AVERROR(EIO);
            goto fail;
        }
        if (gnutls_certificate_type_get(p->session) != GNUTLS_CRT_X509) {
            av_log(h, AV_LOG_ERROR, "Unsupported certificate type\n");
            ret = AVERROR(EIO);
            goto fail;
        }
        gnutls_x509_crt_init(&cert);
        cert_list = gnutls_certificate_get_peers(p->session, &cert_list_size);
        gnutls_x509_crt_import(cert, cert_list, GNUTLS_X509_FMT_DER);
        ret = gnutls_x509_crt_check_hostname(cert, c->host);
        gnutls_x509_crt_deinit(cert);
        if (!ret) {
            av_log(h, AV_LOG_ERROR,
                   "The certificate's owner does not match hostname %s\n", c->host);
            ret = AVERROR(EIO);
            goto fail;
        }
    }

    return 0;
fail:
    tls_close(h);
    return ret;
}
