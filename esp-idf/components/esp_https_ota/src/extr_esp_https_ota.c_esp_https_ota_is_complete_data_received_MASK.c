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
struct TYPE_2__ {int /*<<< orphan*/  http_client; } ;
typedef  TYPE_1__ esp_https_ota_t ;
typedef  scalar_t__ esp_https_ota_handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

bool FUNC1(esp_https_ota_handle_t https_ota_handle)
{
    esp_https_ota_t *handle = (esp_https_ota_t *)https_ota_handle;
    return FUNC0(handle->http_client);
}