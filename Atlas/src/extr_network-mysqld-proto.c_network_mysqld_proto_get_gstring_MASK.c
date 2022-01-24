#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef  TYPE_2__ network_packet ;
typedef  scalar_t__ guint64 ;
struct TYPE_6__ {scalar_t__ len; char* str; } ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 

int FUNC3(network_packet *packet, GString *out) {
	guint64 len;
	int err = 0;

	for (len = 0; packet->offset + len < packet->data->len && *(packet->data->str + packet->offset + len) != '\0'; len++);

	if (packet->offset + len == packet->data->len) { /* havn't found a trailing \0 */
		return -1;
	}

	if (len > 0) {
		FUNC0(packet->offset < packet->data->len);
		FUNC0(packet->offset + len <= packet->data->len);

		err = err || FUNC1(packet, len, out);
	}

	/* skip the \0 */
	err = err || FUNC2(packet, 1);

	return err ? -1 : 0;
}