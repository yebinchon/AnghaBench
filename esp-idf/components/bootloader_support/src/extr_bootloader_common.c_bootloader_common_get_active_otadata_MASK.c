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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 

int FUNC2(esp_ota_select_entry_t *two_otadata)
{
    if (two_otadata == NULL) {
        return -1;
    }
    bool valid_two_otadata[2];
    valid_two_otadata[0] = FUNC0(&two_otadata[0]);
    valid_two_otadata[1] = FUNC0(&two_otadata[1]);
    return FUNC1(two_otadata, valid_two_otadata, true);
}