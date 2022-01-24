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
typedef  int uint32_t ;
struct TYPE_12__ {TYPE_3__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_13__ {scalar_t__ verify; int /*<<< orphan*/  tcp; int /*<<< orphan*/  host; int /*<<< orphan*/  numerichost; scalar_t__ listen; scalar_t__ ca_file; scalar_t__ key_file; scalar_t__ cert_file; } ;
struct TYPE_14__ {int /*<<< orphan*/  ssl_context; int /*<<< orphan*/  ssl_config; int /*<<< orphan*/  priv_key; int /*<<< orphan*/  own_cert; int /*<<< orphan*/  ca_cert; int /*<<< orphan*/  ctr_drbg_context; int /*<<< orphan*/  entropy_context; int /*<<< orphan*/  priv_key_pw; TYPE_2__ tls_shared; } ;
typedef  TYPE_2__ TLSShared ;
typedef  TYPE_3__ TLSContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 int MBEDTLS_ERR_SSL_WANT_WRITE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_IS_SERVER ; 
 int /*<<< orphan*/  MBEDTLS_SSL_PRESET_DEFAULT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_TRANSPORT_STREAM ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_NONE ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_REQUIRED ; 
 int MBEDTLS_X509_BADCERT_NOT_TRUSTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbedtls_entropy_func ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbedtls_recv ; 
 int /*<<< orphan*/  mbedtls_send ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC26(URLContext *h, const char *uri, int flags, AVDictionary **options)
{
    TLSContext *tls_ctx = h->priv_data;
    TLSShared *shr = &tls_ctx->tls_shared;
    uint32_t verify_res_flags;
    int ret;

    // parse additional options
    FUNC24(tls_ctx, uri);

    if ((ret = FUNC2(shr, h, uri, options)) < 0)
        goto fail;

    FUNC18(&tls_ctx->ssl_context);
    FUNC15(&tls_ctx->ssl_config);
    FUNC7(&tls_ctx->entropy_context);
    FUNC5(&tls_ctx->ctr_drbg_context);
    FUNC22(&tls_ctx->ca_cert);
    FUNC8(&tls_ctx->priv_key);

    // load trusted CA
    if (shr->ca_file) {
        if ((ret = FUNC23(&tls_ctx->ca_cert, shr->ca_file)) != 0) {
            FUNC1(h, AV_LOG_ERROR, "mbedtls_x509_crt_parse_file for CA cert returned %d\n", ret);
            goto fail;
        }
    }

    // load own certificate
    if (shr->cert_file) {
        if ((ret = FUNC23(&tls_ctx->own_cert, shr->cert_file)) != 0) {
            FUNC1(h, AV_LOG_ERROR, "mbedtls_x509_crt_parse_file for own cert returned %d\n", ret);
            goto fail;
        }
    }

    // load key file
    if (shr->key_file) {
        if ((ret = FUNC9(&tls_ctx->priv_key,
                                            shr->key_file,
                                            tls_ctx->priv_key_pw)) != 0) {
            FUNC4(h, ret);
            goto fail;
        }
    }

    // seed the random number generator
    if ((ret = FUNC6(&tls_ctx->ctr_drbg_context,
                                     mbedtls_entropy_func,
                                     &tls_ctx->entropy_context,
                                     NULL, 0)) != 0) {
        FUNC1(h, AV_LOG_ERROR, "mbedtls_ctr_drbg_seed returned %d\n", ret);
        goto fail;
    }

    if ((ret = FUNC14(&tls_ctx->ssl_config,
                                           shr->listen ? MBEDTLS_SSL_IS_SERVER : MBEDTLS_SSL_IS_CLIENT,
                                           MBEDTLS_SSL_TRANSPORT_STREAM,
                                           MBEDTLS_SSL_PRESET_DEFAULT)) != 0) {
        FUNC1(h, AV_LOG_ERROR, "mbedtls_ssl_config_defaults returned %d\n", ret);
        goto fail;
    }

    FUNC10(&tls_ctx->ssl_config,
                              shr->ca_file ? MBEDTLS_SSL_VERIFY_REQUIRED : MBEDTLS_SSL_VERIFY_NONE);
    FUNC13(&tls_ctx->ssl_config, mbedtls_ctr_drbg_random, &tls_ctx->ctr_drbg_context);
    FUNC11(&tls_ctx->ssl_config, &tls_ctx->ca_cert, NULL);

    // set own certificate and private key
    if ((ret = FUNC12(&tls_ctx->ssl_config, &tls_ctx->own_cert, &tls_ctx->priv_key)) != 0) {
        FUNC1(h, AV_LOG_ERROR, "mbedtls_ssl_conf_own_cert returned %d\n", ret);
        goto fail;
    }

    if ((ret = FUNC21(&tls_ctx->ssl_context, &tls_ctx->ssl_config)) != 0) {
        FUNC1(h, AV_LOG_ERROR, "mbedtls_ssl_setup returned %d\n", ret);
        goto fail;
    }

    if (!shr->listen && !shr->numerichost) {
        if ((ret = FUNC20(&tls_ctx->ssl_context, shr->host)) != 0) {
            FUNC1(h, AV_LOG_ERROR, "mbedtls_ssl_set_hostname returned %d\n", ret);
            goto fail;
        }
    }

    // set I/O functions to use FFmpeg internal code for transport layer
    FUNC19(&tls_ctx->ssl_context, shr->tcp, mbedtls_send, mbedtls_recv, NULL);

    // ssl handshake
    while ((ret = FUNC17(&tls_ctx->ssl_context)) != 0) {
        if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE) {
            FUNC3(h, ret);
            goto fail;
        }
    }

    if (shr->verify) {
        // check the result of the certificate verification
        if ((verify_res_flags = FUNC16(&tls_ctx->ssl_context)) != 0) {
            FUNC1(h, AV_LOG_ERROR, "mbedtls_ssl_get_verify_result reported problems "\
                                    "with the certificate verification, returned flags: %u\n",
                                    verify_res_flags);
            if (verify_res_flags & MBEDTLS_X509_BADCERT_NOT_TRUSTED)
                FUNC1(h, AV_LOG_ERROR, "The certificate is not correctly signed by the trusted CA.\n");
            goto fail;
        }
    }

    return 0;

fail:
    FUNC25(h);
    return FUNC0(EIO);
}