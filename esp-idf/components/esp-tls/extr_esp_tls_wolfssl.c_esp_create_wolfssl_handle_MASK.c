#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sockfd; void* priv_ssl; int /*<<< orphan*/  error_handle; void* priv_ctx; } ;
typedef  TYPE_1__ esp_tls_t ;
struct TYPE_6__ {int use_global_ca_store; int /*<<< orphan*/ * clientkey_pem_buf; int /*<<< orphan*/ * clientcert_pem_buf; int /*<<< orphan*/  clientkey_pem_bytes; int /*<<< orphan*/  clientcert_pem_bytes; scalar_t__ psk_hint_key; int /*<<< orphan*/  cacert_pem_bytes; int /*<<< orphan*/ * cacert_pem_buf; scalar_t__ alpn_protos; } ;
typedef  TYPE_2__ esp_tls_cfg_t ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_WOLFSSL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_VERIFY_NONE ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WOLFSSL_ALPN_FAILED_ON_MISMATCH ; 
 int /*<<< orphan*/  WOLFSSL_FILETYPE_PEM ; 
 int WOLFSSL_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * global_cacert ; 
 int /*<<< orphan*/  global_cacert_pem_bytes ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

int FUNC19(const char *hostname, size_t hostlen, const void *cfg1, esp_tls_t *tls)
{
#ifdef CONFIG_ESP_DEBUG_WOLFSSL
    wolfSSL_Debugging_ON();
#endif
    const esp_tls_cfg_t *cfg = cfg1;
    FUNC2(cfg != NULL);
    FUNC2(tls != NULL);

    int ret;
    ret = FUNC13();
    if (ret != WOLFSSL_SUCCESS) {
        FUNC1(TAG, "Init wolfSSL failed: %d", ret);
        FUNC0(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }

    tls->priv_ctx = (void *)FUNC8(FUNC18());
    if (!tls->priv_ctx) {
        FUNC1(TAG, "Set wolfSSL ctx failed");
        FUNC0(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }

#ifdef HAVE_ALPN
    if (cfg->alpn_protos) {
        char **alpn_list = (char **)cfg->alpn_protos;
        for (; *alpn_list != NULL; alpn_list ++) {
            if (wolfSSL_UseALPN( (WOLFSSL *)tls->priv_ssl, *alpn_list, strlen(*alpn_list), WOLFSSL_ALPN_FAILED_ON_MISMATCH) != WOLFSSL_SUCCESS) {
                ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
                ESP_LOGE(TAG, "Use wolfSSL ALPN failed");
                goto exit;
            }
        }
    }
#endif

    if ( cfg->use_global_ca_store == true) {
        FUNC7( (WOLFSSL_CTX *)tls->priv_ctx, global_cacert, global_cacert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        FUNC9( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_PEER, NULL);
    } else if (cfg->cacert_pem_buf != NULL) {
        FUNC7( (WOLFSSL_CTX *)tls->priv_ctx, cfg->cacert_pem_buf, cfg->cacert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        FUNC9( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_PEER, NULL);
    } else if (cfg->psk_hint_key) {
        FUNC1(TAG,"psk_hint_key not supported in wolfssl");
        goto exit;
    } else {
        FUNC9( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_NONE, NULL);
    }

    if (cfg->clientcert_pem_buf != NULL && cfg->clientkey_pem_buf != NULL) {
        FUNC11( (WOLFSSL_CTX *)tls->priv_ctx, cfg->clientcert_pem_buf, cfg->clientcert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        FUNC10( (WOLFSSL_CTX *)tls->priv_ctx, cfg->clientkey_pem_buf, cfg->clientkey_pem_bytes, WOLFSSL_FILETYPE_PEM);
    } else if (cfg->clientcert_pem_buf != NULL || cfg->clientkey_pem_buf != NULL) {
        FUNC1(TAG, "You have to provide both clientcert_pem_buf and clientkey_pem_buf for mutual authentication\n\n");
        goto exit;
    }

    tls->priv_ssl =(void *)FUNC15( (WOLFSSL_CTX *)tls->priv_ctx);
    if (!tls->priv_ssl) {
        FUNC1(TAG, "Create wolfSSL failed");
        FUNC0(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }

#ifdef HAVE_SNI
    /* Hostname set here should match CN in server certificate */
    char *use_host = strndup(hostname, hostlen);
    if (!use_host) {
        goto exit;
    }
    wolfSSL_set_tlsext_host_name( (WOLFSSL *)tls->priv_ssl, use_host);
    free(use_host);
#endif

    FUNC16((WOLFSSL *)tls->priv_ssl, tls->sockfd);
    return 0;
exit:
    FUNC3(tls);
    return ret;
}