#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ network_packet ;
typedef  int /*<<< orphan*/  guint64 ;
typedef  scalar_t__ gsize ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 

int FUNC1(network_packet *packet, guint64 *v, gsize size) {
	int err = 0;

	err = err || FUNC0(packet, v, size);

	if (err) return -1;

	packet->offset += size;

	return 0;
}