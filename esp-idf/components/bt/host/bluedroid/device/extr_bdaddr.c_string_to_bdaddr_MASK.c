#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int* address; } ;
typedef  TYPE_1__ bt_bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 
 int FUNC2 (char const*,char*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

bool FUNC3(const char *string, bt_bdaddr_t *addr)
{
    FUNC0(string != NULL);
    FUNC0(addr != NULL);

    bt_bdaddr_t new_addr;
    uint8_t *ptr = new_addr.address;
    uint32_t ptr_32[6];
    bool ret  = FUNC2(string, "%02x:%02x:%02x:%02x:%02x:%02x",
                      &ptr_32[0], &ptr_32[1], &ptr_32[2], &ptr_32[3], &ptr_32[4], &ptr_32[5]) == 6;
    if (ret) {
        for (uint8_t i = 0; i < 6; i++){
            ptr[i] = (uint8_t) ptr_32[i];
        }
        FUNC1(addr, &new_addr, sizeof(bt_bdaddr_t));
    }

    return ret;
}