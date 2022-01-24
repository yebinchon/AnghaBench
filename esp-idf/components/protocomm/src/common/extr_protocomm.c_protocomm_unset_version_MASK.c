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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 

esp_err_t FUNC2(protocomm_t *pc, const char *ep_name)
{
    if ((pc == NULL) || (ep_name == NULL)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (pc->ver) {
        FUNC0((char *)pc->ver);
        pc->ver = NULL;
    }

    return FUNC1(pc, ep_name);
}