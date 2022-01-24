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
typedef  int /*<<< orphan*/  guint64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC1(network_packet *packet, guint64 *v) {
	guint64 v64;

	if (FUNC0(packet, &v64, 6)) return -1;

	*v = v64;

	return 0;
}