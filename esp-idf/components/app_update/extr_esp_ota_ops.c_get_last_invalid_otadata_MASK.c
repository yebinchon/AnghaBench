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
typedef  int /*<<< orphan*/  esp_ota_select_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/  const*,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC3(const esp_ota_select_entry_t *two_otadata)
{

    bool invalid_otadata[2];
    invalid_otadata[0] = FUNC2(&two_otadata[0]);
    invalid_otadata[1] = FUNC2(&two_otadata[1]);
    int num_invalid_otadata = FUNC1(two_otadata, invalid_otadata, false);
    FUNC0(TAG, "Invalid otadata[%d]", num_invalid_otadata);
    return num_invalid_otadata;
}