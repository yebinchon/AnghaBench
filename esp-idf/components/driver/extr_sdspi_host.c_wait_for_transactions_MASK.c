#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spi_transaction_t ;
struct TYPE_2__ {size_t used_transaction_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* s_slots ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int slot)
{
    size_t used_transaction_count = s_slots[slot].used_transaction_count;
    for (size_t i = 0; i < used_transaction_count; ++i) {
        spi_transaction_t* t_out;
        FUNC1(FUNC2(slot), &t_out, portMAX_DELAY);
        FUNC0(slot);
    }
}