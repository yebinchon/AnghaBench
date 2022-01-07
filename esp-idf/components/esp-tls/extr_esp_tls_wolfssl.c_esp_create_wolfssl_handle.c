
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sockfd; void* priv_ssl; int error_handle; void* priv_ctx; } ;
typedef TYPE_1__ esp_tls_t ;
struct TYPE_6__ {int use_global_ca_store; int * clientkey_pem_buf; int * clientcert_pem_buf; int clientkey_pem_bytes; int clientcert_pem_bytes; scalar_t__ psk_hint_key; int cacert_pem_bytes; int * cacert_pem_buf; scalar_t__ alpn_protos; } ;
typedef TYPE_2__ esp_tls_cfg_t ;
typedef int WOLFSSL_CTX ;
typedef int WOLFSSL ;


 int ERR_TYPE_WOLFSSL ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int) ;
 int ESP_LOGE (int ,char*,...) ;
 int SSL_VERIFY_NONE ;
 int SSL_VERIFY_PEER ;
 int TAG ;
 int WOLFSSL_ALPN_FAILED_ON_MISMATCH ;
 int WOLFSSL_FILETYPE_PEM ;
 int WOLFSSL_SUCCESS ;
 int assert (int ) ;
 int esp_wolfssl_cleanup (TYPE_1__*) ;
 int free (char*) ;
 int * global_cacert ;
 int global_cacert_pem_bytes ;
 int strlen (char*) ;
 char* strndup (char const*,size_t) ;
 int wolfSSL_CTX_load_verify_buffer (int *,int *,int ,int ) ;
 scalar_t__ wolfSSL_CTX_new (int ) ;
 int wolfSSL_CTX_set_verify (int *,int ,int *) ;
 int wolfSSL_CTX_use_PrivateKey_buffer (int *,int *,int ,int ) ;
 int wolfSSL_CTX_use_certificate_buffer (int *,int *,int ,int ) ;
 int wolfSSL_Debugging_ON () ;
 int wolfSSL_Init () ;
 int wolfSSL_UseALPN (int *,char*,int ,int ) ;
 scalar_t__ wolfSSL_new (int *) ;
 int wolfSSL_set_fd (int *,int ) ;
 int wolfSSL_set_tlsext_host_name (int *,char*) ;
 int wolfTLSv1_2_client_method () ;

int esp_create_wolfssl_handle(const char *hostname, size_t hostlen, const void *cfg1, esp_tls_t *tls)
{



    const esp_tls_cfg_t *cfg = cfg1;
    assert(cfg != ((void*)0));
    assert(tls != ((void*)0));

    int ret;
    ret = wolfSSL_Init();
    if (ret != WOLFSSL_SUCCESS) {
        ESP_LOGE(TAG, "Init wolfSSL failed: %d", ret);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }

    tls->priv_ctx = (void *)wolfSSL_CTX_new(wolfTLSv1_2_client_method());
    if (!tls->priv_ctx) {
        ESP_LOGE(TAG, "Set wolfSSL ctx failed");
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }
    if ( cfg->use_global_ca_store == 1) {
        wolfSSL_CTX_load_verify_buffer( (WOLFSSL_CTX *)tls->priv_ctx, global_cacert, global_cacert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_PEER, ((void*)0));
    } else if (cfg->cacert_pem_buf != ((void*)0)) {
        wolfSSL_CTX_load_verify_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cfg->cacert_pem_buf, cfg->cacert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_PEER, ((void*)0));
    } else if (cfg->psk_hint_key) {
        ESP_LOGE(TAG,"psk_hint_key not supported in wolfssl");
        goto exit;
    } else {
        wolfSSL_CTX_set_verify( (WOLFSSL_CTX *)tls->priv_ctx, SSL_VERIFY_NONE, ((void*)0));
    }

    if (cfg->clientcert_pem_buf != ((void*)0) && cfg->clientkey_pem_buf != ((void*)0)) {
        wolfSSL_CTX_use_certificate_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cfg->clientcert_pem_buf, cfg->clientcert_pem_bytes, WOLFSSL_FILETYPE_PEM);
        wolfSSL_CTX_use_PrivateKey_buffer( (WOLFSSL_CTX *)tls->priv_ctx, cfg->clientkey_pem_buf, cfg->clientkey_pem_bytes, WOLFSSL_FILETYPE_PEM);
    } else if (cfg->clientcert_pem_buf != ((void*)0) || cfg->clientkey_pem_buf != ((void*)0)) {
        ESP_LOGE(TAG, "You have to provide both clientcert_pem_buf and clientkey_pem_buf for mutual authentication\n\n");
        goto exit;
    }

    tls->priv_ssl =(void *)wolfSSL_new( (WOLFSSL_CTX *)tls->priv_ctx);
    if (!tls->priv_ssl) {
        ESP_LOGE(TAG, "Create wolfSSL failed");
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_WOLFSSL, -ret);
        goto exit;
    }
    wolfSSL_set_fd((WOLFSSL *)tls->priv_ssl, tls->sockfd);
    return 0;
exit:
    esp_wolfssl_cleanup(tls);
    return ret;
}
