#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* esp_http_client_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_5__ {char* post_data; int post_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 

esp_err_t FUNC3(esp_http_client_handle_t client, const char *data, int len)
{
    esp_err_t err = ESP_OK;
    client->post_data = (char *)data;
    client->post_len = len;
    FUNC0(TAG, "set post file length = %d", len);
    if (client->post_data) {
        char *value = NULL;
        if ((err = FUNC1(client, "Content-Type", &value)) != ESP_OK) {
            return err;
        }
        if (value == NULL) {
            err = FUNC2(client, "Content-Type", "application/x-www-form-urlencoded");
        }
    } else {
        client->post_len = 0;
        err = FUNC2(client, "Content-Type", NULL);
    }
    return err;
}