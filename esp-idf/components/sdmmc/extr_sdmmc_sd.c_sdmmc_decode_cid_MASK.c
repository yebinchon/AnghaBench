#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sdmmc_response_t ;
struct TYPE_3__ {int /*<<< orphan*/  date; int /*<<< orphan*/  serial; int /*<<< orphan*/  revision; int /*<<< orphan*/  name; int /*<<< orphan*/  oem_id; int /*<<< orphan*/  mfg_id; } ;
typedef  TYPE_1__ sdmmc_cid_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(sdmmc_response_t resp, sdmmc_cid_t* out_cid)
{
    out_cid->mfg_id = FUNC1(resp);
    out_cid->oem_id = FUNC2(resp);
    FUNC3(resp, out_cid->name);
    out_cid->revision = FUNC5(resp);
    out_cid->serial = FUNC4(resp);
    out_cid->date = FUNC0(resp);
    return ESP_OK;
}