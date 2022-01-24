#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ver; } ;
typedef  TYPE_1__ protocomm_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  VER_EP ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  protocomm_version_handler ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

esp_err_t FUNC3(protocomm_t *pc, const char *ep_name, const char *version)
{
    if ((pc == NULL) || (ep_name == NULL) || (version == NULL)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc->ver) {
        return ESP_ERR_INVALID_STATE;
    }

    pc->ver = FUNC2(version);
    if (pc->ver == NULL) {
        FUNC0(TAG, "Error allocating version string");
        return ESP_ERR_NO_MEM;
    }

    esp_err_t ret = FUNC1(pc, ep_name,
                                                    protocomm_version_handler,
                                                    (void *) pc, VER_EP);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Error adding version endpoint");
        return ret;
    }
    return ESP_OK;
}