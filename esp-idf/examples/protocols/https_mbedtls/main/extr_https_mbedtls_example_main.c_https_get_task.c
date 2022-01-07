
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_x509_crt ;
typedef int mbedtls_ssl_context ;
typedef int mbedtls_ssl_config ;
typedef int mbedtls_net_context ;
typedef int mbedtls_entropy_context ;
typedef int mbedtls_ctr_drbg_context ;
typedef int buf ;


 int CONFIG_MBEDTLS_DEBUG_LEVEL ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*,int,...) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*,...) ;
 int MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY ;
 int MBEDTLS_ERR_SSL_WANT_READ ;
 int MBEDTLS_ERR_SSL_WANT_WRITE ;
 int MBEDTLS_NET_PROTO_TCP ;
 int MBEDTLS_SSL_IS_CLIENT ;
 int MBEDTLS_SSL_PRESET_DEFAULT ;
 int MBEDTLS_SSL_TRANSPORT_STREAM ;
 int MBEDTLS_SSL_VERIFY_OPTIONAL ;
 scalar_t__ REQUEST ;
 int TAG ;
 int WEB_PORT ;
 int WEB_SERVER ;
 int abort () ;
 int bzero (char*,int) ;
 int mbedtls_ctr_drbg_init (int *) ;
 int mbedtls_ctr_drbg_random ;
 int mbedtls_ctr_drbg_seed (int *,int ,int *,int *,int ) ;
 int mbedtls_entropy_func ;
 int mbedtls_entropy_init (int *) ;
 int mbedtls_esp_enable_debug_log (int *,int ) ;
 int mbedtls_net_connect (int *,int ,int ,int ) ;
 int mbedtls_net_free (int *) ;
 int mbedtls_net_init (int *) ;
 int mbedtls_net_recv ;
 int mbedtls_net_send ;
 int mbedtls_ssl_close_notify (int *) ;
 int mbedtls_ssl_conf_authmode (int *,int ) ;
 int mbedtls_ssl_conf_ca_chain (int *,int *,int *) ;
 int mbedtls_ssl_conf_rng (int *,int ,int *) ;
 int mbedtls_ssl_config_defaults (int *,int ,int ,int ) ;
 int mbedtls_ssl_config_init (int *) ;
 int mbedtls_ssl_get_ciphersuite (int *) ;
 int mbedtls_ssl_get_verify_result (int *) ;
 int mbedtls_ssl_handshake (int *) ;
 int mbedtls_ssl_init (int *) ;
 int mbedtls_ssl_read (int *,unsigned char*,int) ;
 int mbedtls_ssl_session_reset (int *) ;
 int mbedtls_ssl_set_bio (int *,int *,int ,int ,int *) ;
 int mbedtls_ssl_set_hostname (int *,int ) ;
 int mbedtls_ssl_setup (int *,int *) ;
 int mbedtls_ssl_write (int *,unsigned char const*,size_t) ;
 int mbedtls_strerror (int,char*,int) ;
 int mbedtls_x509_crt_init (int *) ;
 int mbedtls_x509_crt_parse (int *,scalar_t__,scalar_t__) ;
 int mbedtls_x509_crt_verify_info (char*,int,char*,int) ;
 int portTICK_PERIOD_MS ;
 int putchar (char) ;
 scalar_t__ server_root_cert_pem_end ;
 scalar_t__ server_root_cert_pem_start ;
 size_t strlen (scalar_t__) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void https_get_task(void *pvParameters)
{
    char buf[512];
    int ret, flags, len;

    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_x509_crt cacert;
    mbedtls_ssl_config conf;
    mbedtls_net_context server_fd;

    mbedtls_ssl_init(&ssl);
    mbedtls_x509_crt_init(&cacert);
    mbedtls_ctr_drbg_init(&ctr_drbg);
    ESP_LOGI(TAG, "Seeding the random number generator");

    mbedtls_ssl_config_init(&conf);

    mbedtls_entropy_init(&entropy);
    if((ret = mbedtls_ctr_drbg_seed(&ctr_drbg, mbedtls_entropy_func, &entropy,
                                    ((void*)0), 0)) != 0)
    {
        ESP_LOGE(TAG, "mbedtls_ctr_drbg_seed returned %d", ret);
        abort();
    }

    ESP_LOGI(TAG, "Loading the CA root certificate...");

    ret = mbedtls_x509_crt_parse(&cacert, server_root_cert_pem_start,
                                 server_root_cert_pem_end-server_root_cert_pem_start);

    if(ret < 0)
    {
        ESP_LOGE(TAG, "mbedtls_x509_crt_parse returned -0x%x\n\n", -ret);
        abort();
    }

    ESP_LOGI(TAG, "Setting hostname for TLS session...");


    if((ret = mbedtls_ssl_set_hostname(&ssl, WEB_SERVER)) != 0)
    {
        ESP_LOGE(TAG, "mbedtls_ssl_set_hostname returned -0x%x", -ret);
        abort();
    }

    ESP_LOGI(TAG, "Setting up the SSL/TLS structure...");

    if((ret = mbedtls_ssl_config_defaults(&conf,
                                          MBEDTLS_SSL_IS_CLIENT,
                                          MBEDTLS_SSL_TRANSPORT_STREAM,
                                          MBEDTLS_SSL_PRESET_DEFAULT)) != 0)
    {
        ESP_LOGE(TAG, "mbedtls_ssl_config_defaults returned %d", ret);
        goto exit;
    }






    mbedtls_ssl_conf_authmode(&conf, MBEDTLS_SSL_VERIFY_OPTIONAL);
    mbedtls_ssl_conf_ca_chain(&conf, &cacert, ((void*)0));
    mbedtls_ssl_conf_rng(&conf, mbedtls_ctr_drbg_random, &ctr_drbg);




    if ((ret = mbedtls_ssl_setup(&ssl, &conf)) != 0)
    {
        ESP_LOGE(TAG, "mbedtls_ssl_setup returned -0x%x\n\n", -ret);
        goto exit;
    }

    while(1) {
        mbedtls_net_init(&server_fd);

        ESP_LOGI(TAG, "Connecting to %s:%s...", WEB_SERVER, WEB_PORT);

        if ((ret = mbedtls_net_connect(&server_fd, WEB_SERVER,
                                      WEB_PORT, MBEDTLS_NET_PROTO_TCP)) != 0)
        {
            ESP_LOGE(TAG, "mbedtls_net_connect returned -%x", -ret);
            goto exit;
        }

        ESP_LOGI(TAG, "Connected.");

        mbedtls_ssl_set_bio(&ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, ((void*)0));

        ESP_LOGI(TAG, "Performing the SSL/TLS handshake...");

        while ((ret = mbedtls_ssl_handshake(&ssl)) != 0)
        {
            if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
            {
                ESP_LOGE(TAG, "mbedtls_ssl_handshake returned -0x%x", -ret);
                goto exit;
            }
        }

        ESP_LOGI(TAG, "Verifying peer X.509 certificate...");

        if ((flags = mbedtls_ssl_get_verify_result(&ssl)) != 0)
        {

            ESP_LOGW(TAG, "Failed to verify peer certificate!");
            bzero(buf, sizeof(buf));
            mbedtls_x509_crt_verify_info(buf, sizeof(buf), "  ! ", flags);
            ESP_LOGW(TAG, "verification info: %s", buf);
        }
        else {
            ESP_LOGI(TAG, "Certificate verified.");
        }

        ESP_LOGI(TAG, "Cipher suite is %s", mbedtls_ssl_get_ciphersuite(&ssl));

        ESP_LOGI(TAG, "Writing HTTP request...");

        size_t written_bytes = 0;
        do {
            ret = mbedtls_ssl_write(&ssl,
                                    (const unsigned char *)REQUEST + written_bytes,
                                    strlen(REQUEST) - written_bytes);
            if (ret >= 0) {
                ESP_LOGI(TAG, "%d bytes written", ret);
                written_bytes += ret;
            } else if (ret != MBEDTLS_ERR_SSL_WANT_WRITE && ret != MBEDTLS_ERR_SSL_WANT_READ) {
                ESP_LOGE(TAG, "mbedtls_ssl_write returned -0x%x", -ret);
                goto exit;
            }
        } while(written_bytes < strlen(REQUEST));

        ESP_LOGI(TAG, "Reading HTTP response...");

        do
        {
            len = sizeof(buf) - 1;
            bzero(buf, sizeof(buf));
            ret = mbedtls_ssl_read(&ssl, (unsigned char *)buf, len);

            if(ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
                continue;

            if(ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY) {
                ret = 0;
                break;
            }

            if(ret < 0)
            {
                ESP_LOGE(TAG, "mbedtls_ssl_read returned -0x%x", -ret);
                break;
            }

            if(ret == 0)
            {
                ESP_LOGI(TAG, "connection closed");
                break;
            }

            len = ret;
            ESP_LOGD(TAG, "%d bytes read", len);

            for(int i = 0; i < len; i++) {
                putchar(buf[i]);
            }
        } while(1);

        mbedtls_ssl_close_notify(&ssl);

    exit:
        mbedtls_ssl_session_reset(&ssl);
        mbedtls_net_free(&server_fd);

        if(ret != 0)
        {
            mbedtls_strerror(ret, buf, 100);
            ESP_LOGE(TAG, "Last error was: -0x%x - %s", -ret, buf);
        }

        putchar('\n');

        static int request_count;
        ESP_LOGI(TAG, "Completed %d requests", ++request_count);

        for(int countdown = 10; countdown >= 0; countdown--) {
            ESP_LOGI(TAG, "%d...", countdown);
            vTaskDelay(1000 / portTICK_PERIOD_MS);
        }
        ESP_LOGI(TAG, "Starting again!");
    }
}
