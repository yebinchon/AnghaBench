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
typedef  int /*<<< orphan*/  network_packet ;
typedef  scalar_t__ guint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 

int FUNC2(network_packet *packet) {
	guint8 ok;

	/* on the network we have a length and packet-number of 4 bytes */
	if (0 != FUNC1(packet, &ok)) {
		return -1;
	}
	FUNC0(ok == 0, -1);

	return 0;
}