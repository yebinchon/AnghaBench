
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {scalar_t__ verify; int tcp; int host; int numerichost; scalar_t__ listen; scalar_t__ ca_file; scalar_t__ key_file; scalar_t__ cert_file; } ;
struct TYPE_14__ {int ssl_context; int ssl_config; int priv_key; int own_cert; int ca_cert; int ctr_drbg_context; int entropy_context; int priv_key_pw; TYPE_2__ tls_shared; } ;
typedef TYPE_2__ TLSShared ;
typedef TYPE_3__ TLSContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_IS_SERVER ;
 int MBEDTLS_SSL_PRESET_DEFAULT ;
 int MBEDTLS_SSL_TRANSPORT_STREAM ;
 int MBEDTLS_SSL_VERIFY_NONE ;
 int MBEDTLS_SSL_VERIFY_REQUIRED ;
 int MBEDTLS_X509_BADCERT_NOT_TRUSTED ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ff_tls_open_underlying (TYPE_2__*,TYPE_1__*,char const*,int **) ;
 int handle_handshake_error (TYPE_1__*,int) ;
 int handle_pk_parse_error (TYPE_1__*,int) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_ctr_drbg_seed (int *,int ,int *,int *,int ) ;
 int mbedtls_entropy_func ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_pk_init (int *) ;
 int mbedtls_pk_parse_keyfile (int *,scalar_t__,int ) ;
 int mbedtls_recv ;
 int mbedtls_send ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;
 int mbedtls_ssl_conf_own_cert (int *,int *,int *) ;
 int mbedtls_ssl_conf_rng (int *,int ,int *) ;
 int mbedtls_ssl_config_defaults (int *,int ,int ,int ) ;
 int mbedtls_ssl_config_init (int *) ;
 int mbedtls_ssl_get_verify_result (int *) ;
 int mbedtls_ssl_handshake (int *) ;
 int mbedtls_ssl_init (int *) ;
 int mbedtls_ssl_set_bio (int *,int ,int ,int ,int *) ;
 int mbedtls_ssl_set_hostname (int *,int ) ;
 int mbedtls_ssl_setup (int *,int *) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse_file (int *,scalar_t__) ;
 int parse_options (TYPE_3__*,char const*) ;
 int tls_close (TYPE_1__*) ;

__attribute__((used)) static int tls_open(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *tls_ctx = h->priv_data;
    TLSShared *shr = &tls_ctx->tls_shared;
    uint32_t verify_res_flags;
    int ret;


    parse_options(tls_ctx, uri);

    if ((ret = ff_tls_open_underlying(shr, h, uri, options)) < 0)
        goto fail;

    mbedtls_ssl_init(&tls_ctx->ssl_context);
    mbedtls_ssl_config_init(&tls_ctx->ssl_config);
    mbedtls_entropy_init(&tls_ctx->entropy_context);
    mbedtls_ctr_drbg_init(&tls_ctx->ctr_drbg_context);
    mbedtls_x509_crt_init(&tls_ctx->ca_cert);
    mbedtls_pk_init(&tls_ctx->priv_key);


    if (shr->ca_file) {
        if ((ret = mbedtls_x509_crt_parse_file(&tls_ctx->ca_cert, shr->ca_file)) != 0) {
            av_log(h, AV_LOG_ERROR, "mbedtls_x509_crt_parse_file for CA cert returned %d\n", ret);
            goto fail;
        }
    }


    if (shr->cert_file) {
        if ((ret = mbedtls_x509_crt_parse_file(&tls_ctx->own_cert, shr->cert_file)) != 0) {
            av_log(h, AV_LOG_ERROR, "mbedtls_x509_crt_parse_file for own cert returned %d\n", ret);
            goto fail;
        }
    }


    if (shr->key_file) {
        if ((ret = mbedtls_pk_parse_keyfile(&tls_ctx->priv_key,
                                            shr->key_file,
                                            tls_ctx->priv_key_pw)) != 0) {
            handle_pk_parse_error(h, ret);
            goto fail;
        }
    }


    if ((ret = mbedtls_ctr_drbg_seed(&tls_ctx->ctr_drbg_context,
                                     mbedtls_entropy_func,
                                     &tls_ctx->entropy_context,
                                     ((void*)0), 0)) != 0) {
        av_log(h, AV_LOG_ERROR, "mbedtls_ctr_drbg_seed returned %d\n", ret);
        goto fail;
    }

    if ((ret = mbedtls_ssl_config_defaults(&tls_ctx->ssl_config,
                                           shr->listen ? MBEDTLS_SSL_IS_SERVER : MBEDTLS_SSL_IS_CLIENT,
                                           MBEDTLS_SSL_TRANSPORT_STREAM,
                                           MBEDTLS_SSL_PRESET_DEFAULT)) != 0) {
        av_log(h, AV_LOG_ERROR, "mbedtls_ssl_config_defaults returned %d\n", ret);
        goto fail;
    }

    mbedtls_ssl_conf_authmode(&tls_ctx->ssl_config,
                              shr->ca_file ? MBEDTLS_SSL_VERIFY_REQUIRED : MBEDTLS_SSL_VERIFY_NONE);
    mbedtls_ssl_conf_rng(&tls_ctx->ssl_config, mbedtls_ctr_drbg_random, &tls_ctx->ctr_drbg_context);
    mbedtls_ssl_conf_ca_chain(&tls_ctx->ssl_config, &tls_ctx->ca_cert, ((void*)0));


    if ((ret = mbedtls_ssl_conf_own_cert(&tls_ctx->ssl_config, &tls_ctx->own_cert, &tls_ctx->priv_key)) != 0) {
        av_log(h, AV_LOG_ERROR, "mbedtls_ssl_conf_own_cert returned %d\n", ret);
        goto fail;
    }

    if ((ret = mbedtls_ssl_setup(&tls_ctx->ssl_context, &tls_ctx->ssl_config)) != 0) {
        av_log(h, AV_LOG_ERROR, "mbedtls_ssl_setup returned %d\n", ret);
        goto fail;
    }

    if (!shr->listen && !shr->numerichost) {
        if ((ret = mbedtls_ssl_set_hostname(&tls_ctx->ssl_context, shr->host)) != 0) {
            av_log(h, AV_LOG_ERROR, "mbedtls_ssl_set_hostname returned %d\n", ret);
            goto fail;
        }
    }


    mbedtls_ssl_set_bio(&tls_ctx->ssl_context, shr->tcp, mbedtls_send, mbedtls_recv, ((void*)0));


    while ((ret = mbedtls_ssl_handshake(&tls_ctx->ssl_context)) != 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
            handle_handshake_error(h, ret);
            goto fail;
        }
    }

    if (shr->verify) {

        if ((verify_res_flags = mbedtls_ssl_get_verify_result(&tls_ctx->ssl_context)) != 0) {
            av_log(h, AV_LOG_ERROR, "mbedtls_ssl_get_verify_result reported problems " "with the certificate verification, returned flags: %u\n",

                                    verify_res_flags);
            if (verify_res_flags & MBEDTLS_X509_BADCERT_NOT_TRUSTED)
                av_log(h, AV_LOG_ERROR, "The certificate is not correctly signed by the trusted CA.\n");
            goto fail;
        }
    }

    return 0;

fail:
    tls_close(h);
    return AVERROR(EIO);
}
