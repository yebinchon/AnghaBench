#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int val; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_6__ {TYPE_2__ slc0_int_raw; TYPE_1__ slc0_int_st; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int SDIO_SLAVE_SLC_INT_HOST_MASK ; 
 int SDIO_SLAVE_SLC_INT_RX_MASK ; 
 int SDIO_SLAVE_SLC_INT_TX_MASK ; 
 TYPE_3__ SLC ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void* arg)
{
    uint32_t int_val = SLC.slc0_int_st.val;
    uint32_t int_raw = SLC.slc0_int_raw.val;
    FUNC0(TAG, "sdio_intr: %08X(%08X)", int_val, int_raw);

    if (int_val & SDIO_SLAVE_SLC_INT_RX_MASK) FUNC3(arg);
    if (int_val & SDIO_SLAVE_SLC_INT_TX_MASK) FUNC2(arg);
    if (int_val & SDIO_SLAVE_SLC_INT_HOST_MASK) FUNC1(arg);
}