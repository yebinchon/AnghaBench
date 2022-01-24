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
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u16_t ;
struct TYPE_3__ {scalar_t__ addr; int /*<<< orphan*/ * uuid; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* labels ; 

u8_t *FUNC4(u16_t addr)
{
    int i;

    FUNC1("addr 0x%04x", addr);

    for (i = 0; i < FUNC0(labels); i++) {
        if (labels[i].addr == addr) {
            FUNC1("Found Label UUID for 0x%04x: %s", addr,
                   FUNC3(labels[i].uuid, 16));
            return labels[i].uuid;
        }
    }

    FUNC2("No matching Label UUID for 0x%04x", addr);

    return NULL;
}