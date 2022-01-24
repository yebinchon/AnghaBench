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
struct sock_db {int /*<<< orphan*/  lru_counter; } ;
struct httpd_data {int dummy; } ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (struct httpd_data*) ; 
 scalar_t__ FUNC3 (struct httpd_data*,struct sock_db*) ; 
 struct sock_db* FUNC4 (struct httpd_data*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

esp_err_t FUNC6(struct httpd_data *hd, int newfd)
{
    struct sock_db *sd = FUNC4(hd, newfd);
    if (! sd) {
        return ESP_FAIL;
    }

    FUNC0(TAG, FUNC1("httpd_req_new"));
    if (FUNC3(hd, sd) != ESP_OK) {
        return ESP_FAIL;
    }
    FUNC0(TAG, FUNC1("httpd_req_delete"));
    if (FUNC2(hd) != ESP_OK) {
        return ESP_FAIL;
    }
    FUNC0(TAG, FUNC1("success"));
    sd->lru_counter = FUNC5();
    return ESP_OK;
}