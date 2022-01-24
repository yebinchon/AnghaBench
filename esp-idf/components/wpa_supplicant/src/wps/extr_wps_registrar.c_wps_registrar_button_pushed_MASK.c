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
struct wps_registrar {int selected_registrar; int pbc; int /*<<< orphan*/  p2p_dev_addr; scalar_t__ force_pbc_overlap; int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_registrar*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct wps_registrar*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_registrar*) ; 

int FUNC7(struct wps_registrar *reg,
				const u8 *p2p_dev_addr)
{
	if (p2p_dev_addr == NULL &&
	    FUNC5(reg, NULL, NULL)) {
		FUNC2(MSG_DEBUG,  "WPS: PBC overlap - do not start PBC "
			   "mode");
		FUNC3(reg->wps);
		return -2;
	}
	FUNC2(MSG_DEBUG,  "WPS: Button pushed - PBC mode started");
	reg->force_pbc_overlap = 0;
	reg->selected_registrar = 1;
	reg->pbc = 1;
	if (p2p_dev_addr)
		FUNC0(reg->p2p_dev_addr, p2p_dev_addr, ETH_ALEN);
	else
		FUNC1(reg->p2p_dev_addr, 0, ETH_ALEN);
	FUNC4(reg,
					 (u8 *) "\xff\xff\xff\xff\xff\xff");
	FUNC6(reg);

	return 0;
}