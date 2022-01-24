#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct esp_tls {int dummy; } ;
struct TYPE_3__ {scalar_t__ cacert_bytes; scalar_t__ cacert_buf; } ;
typedef  TYPE_1__ esp_tls_cfg_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int ESP_TLS_ERR_SSL_WANT_READ ; 
 int ESP_TLS_ERR_SSL_WANT_WRITE ; 
 scalar_t__ REQUEST ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WEB_URL ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct esp_tls*) ; 
 struct esp_tls* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (struct esp_tls*,char*,int) ; 
 int FUNC7 (struct esp_tls*,scalar_t__,size_t) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 scalar_t__ server_root_cert_pem_end ; 
 scalar_t__ server_root_cert_pem_start ; 
 size_t FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(void *pvParameters)
{
    char buf[512];
    int ret, len;

    while(1) {
        esp_tls_cfg_t cfg = {
            .cacert_buf  = server_root_cert_pem_start,
            .cacert_bytes = server_root_cert_pem_end - server_root_cert_pem_start,
        };
        
        struct esp_tls *tls = FUNC5(WEB_URL, &cfg);
        
        if(tls != NULL) {
            FUNC2(TAG, "Connection established...");
        } else {
            FUNC1(TAG, "Connection failed...");
            goto exit;
        }
        
        size_t written_bytes = 0;
        do {
            ret = FUNC7(tls, 
                                     REQUEST + written_bytes, 
                                     FUNC9(REQUEST) - written_bytes);
            if (ret >= 0) {
                FUNC2(TAG, "%d bytes written", ret);
                written_bytes += ret;
            } else if (ret != ESP_TLS_ERR_SSL_WANT_READ  && ret != ESP_TLS_ERR_SSL_WANT_WRITE) {
                FUNC1(TAG, "esp_tls_conn_write  returned 0x%x", ret);
                goto exit;
            }
        } while(written_bytes < FUNC9(REQUEST));

        FUNC2(TAG, "Reading HTTP response...");

        do
        {
            len = sizeof(buf) - 1;
            FUNC3(buf, sizeof(buf));
            ret = FUNC6(tls, (char *)buf, len);
            
            if(ret == ESP_TLS_ERR_SSL_WANT_WRITE  || ret == ESP_TLS_ERR_SSL_WANT_READ)
                continue;
            
            if(ret < 0)
           {
                FUNC1(TAG, "esp_tls_conn_read  returned -0x%x", -ret);
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
                FUNC8(buf[i]);
            }
        } while(1);

    exit:
        FUNC4(tls);    
        FUNC8('\n'); // JSON output doesn't have a newline at end

        static int request_count;
        FUNC2(TAG, "Completed %d requests", ++request_count);

        for(int countdown = 10; countdown >= 0; countdown--) {
            FUNC2(TAG, "%d...", countdown);
            FUNC10(1000 / portTICK_PERIOD_MS);
        }
        FUNC2(TAG, "Starting again!");
    }
}