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
typedef  int /*<<< orphan*/  tBTA_HF_CLIENT_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_API_DEREGISTER_EVT ; 
 int /*<<< orphan*/  BTA_ID_HS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(tBTA_HF_CLIENT_DATA *p_data)
{
    if (!FUNC4 (BTA_ID_HS)) {
        FUNC0("BTA HF Client is already disabled, ignoring ...");
        return;
    }

    /* De-register with BTA system manager */
    FUNC3(BTA_ID_HS);

    FUNC1(BTA_HF_CLIENT_API_DEREGISTER_EVT, p_data);

    FUNC2 (BTA_ID_HS, NULL);
}