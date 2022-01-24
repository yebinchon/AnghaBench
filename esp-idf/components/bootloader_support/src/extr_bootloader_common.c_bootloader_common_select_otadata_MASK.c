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
struct TYPE_3__ {int ota_seq; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  TAG ; 

int FUNC3(const esp_ota_select_entry_t *two_otadata, bool *valid_two_otadata, bool max)
{
    if (two_otadata == NULL || valid_two_otadata == NULL) {
        return -1;
    }
    int active_otadata = -1;
    if (valid_two_otadata[0] && valid_two_otadata[1]) {
        int condition = (max == true) ? FUNC1(two_otadata[0].ota_seq, two_otadata[1].ota_seq) : FUNC2(two_otadata[0].ota_seq, two_otadata[1].ota_seq);
        if (condition == two_otadata[0].ota_seq) {
            active_otadata = 0;
        } else {
            active_otadata = 1;
        }
        FUNC0(TAG, "Both OTA copies are valid");
    } else {
        for (int i = 0; i < 2; ++i) {
            if (valid_two_otadata[i]) {
                active_otadata = i;
                FUNC0(TAG, "Only otadata[%d] is valid", i);
                break;
            }
        }
    }
    return active_otadata;
}