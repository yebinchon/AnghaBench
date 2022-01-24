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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nvs_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_ERR_NVS_NOT_FOUND ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  NVS_READWRITE ; 
 int UINT16_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char const*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int ulp_edge_count ; 

__attribute__((used)) static void FUNC9(void)
{
    const char* namespace = "plusecnt";
    const char* count_key = "count";

    FUNC0( FUNC4() );
    nvs_handle_t handle;
    FUNC0( FUNC6(namespace, NVS_READWRITE, &handle));
    uint32_t pulse_count = 0;
    esp_err_t err = FUNC5(handle, count_key, &pulse_count);
    FUNC1(err == ESP_OK || err == ESP_ERR_NVS_NOT_FOUND);
    FUNC8("Read pulse count from NVS: %5d\n", pulse_count);

    /* ULP program counts signal edges, convert that to the number of pulses */
    uint32_t pulse_count_from_ulp = (ulp_edge_count & UINT16_MAX) / 2;
    /* In case of an odd number of edges, keep one until next time */
    ulp_edge_count = ulp_edge_count % 2;
    FUNC8("Pulse count from ULP: %5d\n", pulse_count_from_ulp);

    /* Save the new pulse count to NVS */
    pulse_count += pulse_count_from_ulp;
    FUNC0(FUNC7(handle, count_key, pulse_count));
    FUNC0(FUNC3(handle));
    FUNC2(handle);
    FUNC8("Wrote updated pulse count to NVS: %5d\n", pulse_count);
}