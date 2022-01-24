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
typedef  int uint8_t ;
struct TYPE_3__ {int* address; } ;
typedef  TYPE_1__ bt_bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int const,int const,int const,int const,int const,int const) ; 

const char *FUNC2(const bt_bdaddr_t *addr, char *string, size_t size)
{
    FUNC0(addr != NULL);
    FUNC0(string != NULL);

    if (size < 18) {
        return NULL;
    }

    const uint8_t *ptr = addr->address;
    FUNC1(string, "%02x:%02x:%02x:%02x:%02x:%02x",
            ptr[0], ptr[1], ptr[2],
            ptr[3], ptr[4], ptr[5]);
    return string;
}