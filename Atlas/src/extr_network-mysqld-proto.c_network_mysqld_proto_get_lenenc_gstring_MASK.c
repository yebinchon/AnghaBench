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
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(network_packet *packet, GString *out) {
	guint64 len;
	int err = 0;

	err = err || FUNC1(packet, &len);
	err = err || FUNC0(packet, len, out);

	return err ? -1 : 0;
}