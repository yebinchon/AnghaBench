#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ offset; TYPE_5__* data; } ;
typedef  TYPE_1__ network_packet ;
typedef  scalar_t__ guint64 ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ **,scalar_t__) ; 

int FUNC4(network_packet *packet, gchar **s, guint64 *_len) {
	guint64 len;

	if (packet->offset >= packet->data->len) {
		FUNC1(G_STRLOC, FUNC0(packet->data));
		return -1;
	}	
	if (packet->offset >= packet->data->len) {
		return -1;
	}

	if (FUNC2(packet, &len)) return -1;
	
	if (packet->offset + len > packet->data->len) return -1;

	if (_len) *_len = len;
	
	return FUNC3(packet, s, len);
}