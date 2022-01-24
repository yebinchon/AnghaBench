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
typedef  int /*<<< orphan*/  guint32 ;

/* Variables and functions */
 scalar_t__ COM_STMT_EXECUTE ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 

int FUNC3(network_packet *packet,
		guint32 *stmt_id) {
	guint8 packet_type;
	int err = 0;

	err = err || FUNC2(packet, &packet_type);
	if (err) return -1;

	if (COM_STMT_EXECUTE != packet_type) {
		FUNC0("%s: expected the first byte to be %02x, got %02x",
				G_STRLOC,
				COM_STMT_EXECUTE,
				packet_type);
		return -1;
	}

	err = err || FUNC1(packet, stmt_id);

	return err ? -1 : 0;
}