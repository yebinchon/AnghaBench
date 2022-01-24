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
typedef  int /*<<< orphan*/  tBTA_SYS_REG ;
typedef  size_t UINT8 ;
struct TYPE_2__ {int /*<<< orphan*/ * is_reg; int /*<<< orphan*/ ** reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ bta_sys_cb ; 

void FUNC0(UINT8 id, const tBTA_SYS_REG *p_reg)
{
    bta_sys_cb.reg[id] = (tBTA_SYS_REG *) p_reg;
    bta_sys_cb.is_reg[id] = TRUE;
}