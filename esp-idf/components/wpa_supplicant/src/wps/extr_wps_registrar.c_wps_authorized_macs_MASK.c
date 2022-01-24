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
struct wps_registrar {int /*<<< orphan*/ * authorized_macs_union; } ;

/* Variables and functions */
 size_t WPS_MAX_AUTHORIZED_MACS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

const u8 * FUNC1(struct wps_registrar *reg, size_t *count)
{
	*count = 0;

#ifdef CONFIG_WPS2
	while (*count < WPS_MAX_AUTHORIZED_MACS) {
		if (is_zero_ether_addr(reg->authorized_macs_union[*count]))
			break;
		(*count)++;
	}
#endif /* CONFIG_WPS2 */

	return (const u8 *) reg->authorized_macs_union;
}