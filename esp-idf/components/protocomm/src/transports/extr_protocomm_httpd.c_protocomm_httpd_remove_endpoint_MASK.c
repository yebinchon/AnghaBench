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
typedef  int /*<<< orphan*/  httpd_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_2__ {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  HTTP_POST ; 
 int /*<<< orphan*/  TAG ; 
 char* FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* pc_httpd ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC8(const char *ep_name)
{
    if (pc_httpd == NULL) {
        return ESP_ERR_INVALID_STATE;
    }

    FUNC0(TAG, "Removing endpoint : %s", ep_name);

    /* Construct URI name by prepending '/' to ep_name */
    char* ep_uri = FUNC2(1, FUNC7(ep_name) + 2);
    if (!ep_uri) {
        FUNC1(TAG, "Malloc failed for ep uri");
        return ESP_ERR_NO_MEM;
    }
    FUNC6(ep_uri, "/%s", ep_name);

    /* Unregister URI handler */
    esp_err_t err;
    httpd_handle_t *server = (httpd_handle_t *) pc_httpd->priv;
    if ((err = FUNC5(*server, ep_uri, HTTP_POST)) != ESP_OK) {
        FUNC1(TAG, "Uri handler de-register failed: %s", FUNC3(err));
        FUNC4(ep_uri);
        return ESP_FAIL;
    }

    FUNC4(ep_uri);
    return ESP_OK;
}