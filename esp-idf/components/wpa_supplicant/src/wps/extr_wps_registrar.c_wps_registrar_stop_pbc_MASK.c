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
typedef  int /*<<< orphan*/  u8 ;
struct wps_registrar {int /*<<< orphan*/  p2p_dev_addr; scalar_t__ pbc; scalar_t__ selected_registrar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_registrar*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_registrar*) ; 

__attribute__((used)) static void FUNC3(struct wps_registrar *reg)
{
	reg->selected_registrar = 0;
	reg->pbc = 0;
	FUNC0(reg->p2p_dev_addr, 0, ETH_ALEN);
	FUNC1(reg,
					    (u8 *) "\xff\xff\xff\xff\xff\xff");
	FUNC2(reg);
}