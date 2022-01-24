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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/ * global_cacert ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC3(void)
{
    if (global_cacert == NULL) {
        global_cacert = (mbedtls_x509_crt *)FUNC1(1, sizeof(mbedtls_x509_crt));
        if (global_cacert == NULL) {
            FUNC0(TAG, "global_cacert not allocated");
            return ESP_ERR_NO_MEM;
        }
        FUNC2(global_cacert);
    }
    return ESP_OK;
}