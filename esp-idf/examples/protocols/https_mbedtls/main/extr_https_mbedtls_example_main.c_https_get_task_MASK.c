#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_x509_crt ;
typedef  int /*<<< orphan*/  mbedtls_ssl_context ;
typedef  int /*<<< orphan*/  mbedtls_ssl_config ;
typedef  int /*<<< orphan*/  mbedtls_net_context ;
typedef  int /*<<< orphan*/  mbedtls_entropy_context ;
typedef  int /*<<< orphan*/  mbedtls_ctr_drbg_context ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MBEDTLS_DEBUG_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY ; 
 int MBEDTLS_ERR_SSL_WANT_READ ; 
 int MBEDTLS_ERR_SSL_WANT_WRITE ; 
 int /*<<< orphan*/  MBEDTLS_NET_PROTO_TCP ; 
 int /*<<< orphan*/  MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_PRESET_DEFAULT ; 
 int /*<<< orphan*/  MBEDTLS_SSL_TRANSPORT_STREAM ; 
 int /*<<< orphan*/  MBEDTLS_SSL_VERIFY_OPTIONAL ; 
 scalar_t__ REQUEST ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WEB_PORT ; 
 int /*<<< orphan*/  WEB_SERVER ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_ctr_drbg_random ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbedtls_entropy_func ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbedtls_net_recv ; 
 int /*<<< orphan*/  mbedtls_net_send ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC29 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int FUNC31 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,char*,int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC33 (char) ; 
 scalar_t__ server_root_cert_pem_end ; 
 scalar_t__ server_root_cert_pem_start ; 
 size_t FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 

__attribute__((used)) static void FUNC36(void *pvParameters)
{
    char buf[512];
    int ret, flags, len;

    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_x509_crt cacert;
    mbedtls_ssl_config conf;
    mbedtls_net_context server_fd;

    FUNC22(&ssl);
    FUNC30(&cacert);
    FUNC6(&ctr_drbg);
    FUNC2(TAG, "Seeding the random number generator");

    FUNC18(&conf);

    FUNC8(&entropy);
    if((ret = FUNC7(&ctr_drbg, mbedtls_entropy_func, &entropy,
                                    NULL, 0)) != 0)
    {
        FUNC1(TAG, "mbedtls_ctr_drbg_seed returned %d", ret);
        FUNC4();
    }

    FUNC2(TAG, "Loading the CA root certificate...");

    ret = FUNC31(&cacert, server_root_cert_pem_start,
                                 server_root_cert_pem_end-server_root_cert_pem_start);

    if(ret < 0)
    {
        FUNC1(TAG, "mbedtls_x509_crt_parse returned -0x%x\n\n", -ret);
        FUNC4();
    }

    FUNC2(TAG, "Setting hostname for TLS session...");

     /* Hostname set here should match CN in server certificate */
    if((ret = FUNC26(&ssl, WEB_SERVER)) != 0)
    {
        FUNC1(TAG, "mbedtls_ssl_set_hostname returned -0x%x", -ret);
        FUNC4();
    }

    FUNC2(TAG, "Setting up the SSL/TLS structure...");

    if((ret = FUNC17(&conf,
                                          MBEDTLS_SSL_IS_CLIENT,
                                          MBEDTLS_SSL_TRANSPORT_STREAM,
                                          MBEDTLS_SSL_PRESET_DEFAULT)) != 0)
    {
        FUNC1(TAG, "mbedtls_ssl_config_defaults returned %d", ret);
        goto exit;
    }

    /* MBEDTLS_SSL_VERIFY_OPTIONAL is bad for security, in this example it will print
       a warning if CA verification fails but it will continue to connect.

       You should consider using MBEDTLS_SSL_VERIFY_REQUIRED in your own code.
    */
    FUNC14(&conf, MBEDTLS_SSL_VERIFY_OPTIONAL);
    FUNC15(&conf, &cacert, NULL);
    FUNC16(&conf, mbedtls_ctr_drbg_random, &ctr_drbg);
#ifdef CONFIG_MBEDTLS_DEBUG
    mbedtls_esp_enable_debug_log(&conf, CONFIG_MBEDTLS_DEBUG_LEVEL);
#endif

    if ((ret = FUNC27(&ssl, &conf)) != 0)
    {
        FUNC1(TAG, "mbedtls_ssl_setup returned -0x%x\n\n", -ret);
        goto exit;
    }

    while(1) {
        FUNC12(&server_fd);

        FUNC2(TAG, "Connecting to %s:%s...", WEB_SERVER, WEB_PORT);

        if ((ret = FUNC10(&server_fd, WEB_SERVER,
                                      WEB_PORT, MBEDTLS_NET_PROTO_TCP)) != 0)
        {
            FUNC1(TAG, "mbedtls_net_connect returned -%x", -ret);
            goto exit;
        }

        FUNC2(TAG, "Connected.");

        FUNC25(&ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, NULL);

        FUNC2(TAG, "Performing the SSL/TLS handshake...");

        while ((ret = FUNC21(&ssl)) != 0)
        {
            if (ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE)
            {
                FUNC1(TAG, "mbedtls_ssl_handshake returned -0x%x", -ret);
                goto exit;
            }
        }

        FUNC2(TAG, "Verifying peer X.509 certificate...");

        if ((flags = FUNC20(&ssl)) != 0)
        {
            /* In real life, we probably want to close connection if ret != 0 */
            FUNC3(TAG, "Failed to verify peer certificate!");
            FUNC5(buf, sizeof(buf));
            FUNC32(buf, sizeof(buf), "  ! ", flags);
            FUNC3(TAG, "verification info: %s", buf);
        }
        else {
            FUNC2(TAG, "Certificate verified.");
        }

        FUNC2(TAG, "Cipher suite is %s", FUNC19(&ssl));

        FUNC2(TAG, "Writing HTTP request...");

        size_t written_bytes = 0;
        do {
            ret = FUNC28(&ssl,
                                    (const unsigned char *)REQUEST + written_bytes,
                                    FUNC34(REQUEST) - written_bytes);
            if (ret >= 0) {
                FUNC2(TAG, "%d bytes written", ret);
                written_bytes += ret;
            } else if (ret != MBEDTLS_ERR_SSL_WANT_WRITE && ret != MBEDTLS_ERR_SSL_WANT_READ) {
                FUNC1(TAG, "mbedtls_ssl_write returned -0x%x", -ret);
                goto exit;
            }
        } while(written_bytes < FUNC34(REQUEST));

        FUNC2(TAG, "Reading HTTP response...");

        do
        {
            len = sizeof(buf) - 1;
            FUNC5(buf, sizeof(buf));
            ret = FUNC23(&ssl, (unsigned char *)buf, len);

            if(ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE)
                continue;

            if(ret == MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY) {
                ret = 0;
                break;
            }

            if(ret < 0)
            {
                FUNC1(TAG, "mbedtls_ssl_read returned -0x%x", -ret);
                break;
            }

            if(ret == 0)
            {
                FUNC2(TAG, "connection closed");
                break;
            }

            len = ret;
            FUNC0(TAG, "%d bytes read", len);
            /* Print response directly to stdout as it is read */
            for(int i = 0; i < len; i++) {
                FUNC33(buf[i]);
            }
        } while(1);

        FUNC13(&ssl);

    exit:
        FUNC24(&ssl);
        FUNC11(&server_fd);

        if(ret != 0)
        {
            FUNC29(ret, buf, 100);
            FUNC1(TAG, "Last error was: -0x%x - %s", -ret, buf);
        }

        FUNC33('\n'); // JSON output doesn't have a newline at end

        static int request_count;
        FUNC2(TAG, "Completed %d requests", ++request_count);

        for(int countdown = 10; countdown >= 0; countdown--) {
            FUNC2(TAG, "%d...", countdown);
            FUNC35(1000 / portTICK_PERIOD_MS);
        }
        FUNC2(TAG, "Starting again!");
    }
}