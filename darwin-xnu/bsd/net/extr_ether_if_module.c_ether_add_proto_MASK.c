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
typedef  size_t u_int32_t ;
struct ifnet_demux_desc {int dummy; } ;
typedef  int /*<<< orphan*/  protocol_family_t ;
typedef  int /*<<< orphan*/  ifnet_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ifnet_demux_desc const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(ifnet_t	 ifp, protocol_family_t	protocol,
    const struct ifnet_demux_desc *demux_list, u_int32_t demux_count)
{
	int error = 0;
	u_int32_t i;

	for (i = 0; i < demux_count; i++) {
		error = FUNC0(ifp, protocol, &demux_list[i]);
		if (error) {
			FUNC1(ifp, protocol);
			break;
		}
	}

	return (error);
}