#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  server_port; int /*<<< orphan*/  open_fn; int /*<<< orphan*/  global_transport_ctx_free_fn; int /*<<< orphan*/ * global_transport_ctx; } ;
struct httpd_ssl_config {scalar_t__ transport_mode; TYPE_1__ httpd; int /*<<< orphan*/  port_insecure; int /*<<< orphan*/  port_secure; } ;
typedef  int /*<<< orphan*/ * httpd_handle_t ;
typedef  int /*<<< orphan*/  esp_tls_cfg_server_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ESP_OK ; 
 scalar_t__ HTTPD_SSL_TRANSPORT_SECURE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct httpd_ssl_config*) ; 
 int /*<<< orphan*/  free_secure_context ; 
 int /*<<< orphan*/  httpd_ssl_open ; 
 int FUNC4 (int /*<<< orphan*/ **,TYPE_1__*) ; 

esp_err_t FUNC5(httpd_handle_t *pHandle, struct httpd_ssl_config *config)
{
    FUNC2(config != NULL);
    FUNC2(pHandle != NULL);

    FUNC1(TAG, "Starting server");

    if (HTTPD_SSL_TRANSPORT_SECURE == config->transport_mode) {

        esp_tls_cfg_server_t *esp_tls_cfg = FUNC3(config);
        if (!esp_tls_cfg) {
            return -1;
        }

        FUNC0(TAG, "SSL context ready");

        // set SSL specific config
        config->httpd.global_transport_ctx = esp_tls_cfg;
        config->httpd.global_transport_ctx_free_fn = free_secure_context;
        config->httpd.open_fn = httpd_ssl_open; // the open function configures the created SSL sessions

        config->httpd.server_port = config->port_secure;
    } else {
        FUNC0(TAG, "SSL disabled, using plain HTTP");
        config->httpd.server_port = config->port_insecure;
    }

    httpd_handle_t handle = NULL;

    esp_err_t ret = FUNC4(&handle, &config->httpd);
    if (ret != ESP_OK) return ret;

    *pHandle = handle;

    FUNC1(TAG, "Server listening on port %d", config->httpd.server_port);
    return ESP_OK;
}