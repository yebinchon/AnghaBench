#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cJSON ;
struct TYPE_4__ {scalar_t__ no_pop; scalar_t__ no_sec; } ;
struct TYPE_5__ {TYPE_1__ capabilities; int /*<<< orphan*/  version; } ;
struct TYPE_6__ {TYPE_2__ mgr_info; scalar_t__ app_info_json; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int) ; 
 TYPE_3__* prov_ctx ; 

__attribute__((used)) static cJSON* FUNC7(void)
{
    cJSON *full_info_json = prov_ctx->app_info_json ?
                                FUNC6(prov_ctx->app_info_json, 1) : FUNC4();
    cJSON *prov_info_json = FUNC4();
    cJSON *prov_capabilities = FUNC3();

    /* Use label "prov" to indicate provisioning related information */
    FUNC1(full_info_json, "prov", prov_info_json);

    /* Version field */
    FUNC2(prov_info_json, "ver", prov_ctx->mgr_info.version);

    /* Capabilities field */
    FUNC1(prov_info_json, "cap", prov_capabilities);

    /* If Security / Proof of Possession is not used, indicate in capabilities */
    if (prov_ctx->mgr_info.capabilities.no_sec) {
        FUNC0(prov_capabilities, FUNC5("no_sec"));
    } else if (prov_ctx->mgr_info.capabilities.no_pop) {
        FUNC0(prov_capabilities, FUNC5("no_pop"));
    }

    /* Indicate capability for performing Wi-Fi scan */
    FUNC0(prov_capabilities, FUNC5("wifi_scan"));
    return full_info_json;
}