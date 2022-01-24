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
typedef  int /*<<< orphan*/ * httpd_handle_t ;
typedef  int /*<<< orphan*/  esp_tls_t ;
typedef  int /*<<< orphan*/  esp_tls_cfg_server_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  httpd_ssl_close ; 
 int /*<<< orphan*/  httpd_ssl_pending ; 
 int /*<<< orphan*/  httpd_ssl_recv ; 
 int /*<<< orphan*/  httpd_ssl_send ; 

__attribute__((used)) static esp_err_t FUNC12(httpd_handle_t server, int sockfd)
{
    FUNC3(server != NULL);

    // Retrieve the SSL context from the global context field (set in config)
    esp_tls_cfg_server_t *global_ctx = FUNC7(server);
    FUNC3(global_ctx != NULL);

    esp_tls_t *tls = (esp_tls_t *)FUNC4(1, sizeof(esp_tls_t));
    if (!tls) {
        return ESP_ERR_NO_MEM;
    }
    FUNC2(TAG, "performing session handshake");
    int ret = FUNC5(global_ctx, sockfd, tls);
    if (ret != 0) {
        FUNC1(TAG, "esp_tls_create_server_session failed");
        goto fail;
    }

    // Store the SSL session into the context field of the HTTPD session object
    FUNC11(server, sockfd, tls, httpd_ssl_close);

    // Set rx/tx/pending override functions
    FUNC10(server, sockfd, httpd_ssl_send);
    FUNC9(server, sockfd, httpd_ssl_recv);
    FUNC8(server, sockfd, httpd_ssl_pending);

    // all access should now go through SSL

    FUNC0(TAG, "Secure socket open");

    return ESP_OK;
fail:
    FUNC6(tls);
    return ESP_FAIL;
}