#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ssl_pm {int /*<<< orphan*/  entropy; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  conf; int /*<<< orphan*/  fd; int /*<<< orphan*/  ssl; int /*<<< orphan*/  cl_fd; } ;
typedef  int /*<<< orphan*/  pers ;
struct TYPE_9__ {scalar_t__ version; struct ssl_pm* ssl_pm; TYPE_2__* ctx; TYPE_3__* method; } ;
struct TYPE_8__ {scalar_t__ endpoint; } ;
struct TYPE_6__ {scalar_t__ alpn_status; int /*<<< orphan*/  alpn_list; } ;
struct TYPE_7__ {TYPE_1__ ssl_alpn; int /*<<< orphan*/  read_buffer_len; } ;
typedef  TYPE_3__ SSL_METHOD ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 scalar_t__ ALPN_ENABLE ; 
 int /*<<< orphan*/  MBEDTLS_DEBUG_LEVEL ; 
 int MBEDTLS_SSL_IS_CLIENT ; 
 int MBEDTLS_SSL_IS_SERVER ; 
 int /*<<< orphan*/  MBEDTLS_SSL_MAJOR_VERSION_3 ; 
 int MBEDTLS_SSL_MINOR_VERSION_0 ; 
 int MBEDTLS_SSL_MINOR_VERSION_1 ; 
 int MBEDTLS_SSL_MINOR_VERSION_2 ; 
 int MBEDTLS_SSL_MINOR_VERSION_3 ; 
 int /*<<< orphan*/  MBEDTLS_SSL_PRESET_DEFAULT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_TRANSPORT_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 scalar_t__ TLS1_1_VERSION ; 
 scalar_t__ TLS1_2_VERSION ; 
 scalar_t__ TLS1_VERSION ; 
 scalar_t__ TLS_ANY_VERSION ; 
 int /*<<< orphan*/  max_content_len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_entropy_func ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_net_recv ; 
 int /*<<< orphan*/  mbedtls_net_send ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct ssl_pm*) ; 
 struct ssl_pm* FUNC20 (int) ; 
 int /*<<< orphan*/ * ssl_platform_debug ; 

int FUNC21(SSL *ssl)
{
    struct ssl_pm *ssl_pm;
    int ret;

    const unsigned char pers[] = "OpenSSL PM";
    size_t pers_len = sizeof(pers);

    int endpoint;
    int version;

    const SSL_METHOD *method = ssl->method;

    ssl_pm = FUNC20(sizeof(struct ssl_pm));
    if (!ssl_pm) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (ssl_pm)");
        goto no_mem;
    }

    max_content_len = ssl->ctx->read_buffer_len;

    FUNC7(&ssl_pm->fd);
    FUNC7(&ssl_pm->cl_fd);

    FUNC15(&ssl_pm->conf);
    FUNC2(&ssl_pm->ctr_drbg);
    FUNC6(&ssl_pm->entropy);
    FUNC16(&ssl_pm->ssl);

    ret = FUNC3(&ssl_pm->ctr_drbg, mbedtls_entropy_func, &ssl_pm->entropy, pers, pers_len);
    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ctr_drbg_seed() return -0x%x", -ret);
        goto mbedtls_err1;
    }

    if (method->endpoint) {
        endpoint = MBEDTLS_SSL_IS_SERVER;
    } else {
        endpoint = MBEDTLS_SSL_IS_CLIENT;
    }
    ret = FUNC13(&ssl_pm->conf, endpoint, MBEDTLS_SSL_TRANSPORT_STREAM, MBEDTLS_SSL_PRESET_DEFAULT);
    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_config_defaults() return -0x%x", -ret);
        goto mbedtls_err2;
    }

    if (TLS_ANY_VERSION != ssl->version) {
        if (TLS1_2_VERSION == ssl->version)
            version = MBEDTLS_SSL_MINOR_VERSION_3;
        else if (TLS1_1_VERSION == ssl->version)
            version = MBEDTLS_SSL_MINOR_VERSION_2;
        else if (TLS1_VERSION == ssl->version)
            version = MBEDTLS_SSL_MINOR_VERSION_1;
        else
            version = MBEDTLS_SSL_MINOR_VERSION_0;

        FUNC10(&ssl_pm->conf, MBEDTLS_SSL_MAJOR_VERSION_3, version);
        FUNC11(&ssl_pm->conf, MBEDTLS_SSL_MAJOR_VERSION_3, version);
    } else {
        FUNC10(&ssl_pm->conf, MBEDTLS_SSL_MAJOR_VERSION_3, MBEDTLS_SSL_MINOR_VERSION_3);
        FUNC11(&ssl_pm->conf, MBEDTLS_SSL_MAJOR_VERSION_3, MBEDTLS_SSL_MINOR_VERSION_0);
    }

    if (ssl->ctx->ssl_alpn.alpn_status == ALPN_ENABLE) {
#ifdef MBEDTLS_SSL_ALPN
        mbedtls_ssl_conf_alpn_protocols( &ssl_pm->conf, ssl->ctx->ssl_alpn.alpn_list );
#else
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "CONFIG_MBEDTLS_SSL_ALPN must be enabled to use ALPN", -1);
#endif // MBEDTLS_SSL_ALPN
    }
    FUNC12(&ssl_pm->conf, mbedtls_ctr_drbg_random, &ssl_pm->ctr_drbg);

#ifdef CONFIG_OPENSSL_LOWLEVEL_DEBUG
    mbedtls_debug_set_threshold(MBEDTLS_DEBUG_LEVEL);
    mbedtls_ssl_conf_dbg(&ssl_pm->conf, ssl_platform_debug, NULL);
#else
    FUNC9(&ssl_pm->conf, NULL, NULL);
#endif

    ret = FUNC18(&ssl_pm->ssl, &ssl_pm->conf);
    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_ssl_setup() return -0x%x", -ret);
        goto mbedtls_err2;
    }

    FUNC17(&ssl_pm->ssl, &ssl_pm->fd, mbedtls_net_send, mbedtls_net_recv, NULL);

    ssl->ssl_pm = ssl_pm;

    return 0;

mbedtls_err2:
    FUNC14(&ssl_pm->conf);
    FUNC1(&ssl_pm->ctr_drbg);
mbedtls_err1:
    FUNC5(&ssl_pm->entropy);
    FUNC19(ssl_pm);
no_mem:
    return -1;
}