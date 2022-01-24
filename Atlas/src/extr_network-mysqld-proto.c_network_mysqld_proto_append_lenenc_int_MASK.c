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
typedef  int guint64 ;
typedef  int gchar ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

int FUNC1(GString *packet, guint64 length) {
	if (length < 251) {
		FUNC0(packet, length);
	} else if (length < 65536) {
		FUNC0(packet, (gchar)252);
		FUNC0(packet, (length >> 0) & 0xff);
		FUNC0(packet, (length >> 8) & 0xff);
	} else if (length < 16777216) {
		FUNC0(packet, (gchar)253);
		FUNC0(packet, (length >> 0) & 0xff);
		FUNC0(packet, (length >> 8) & 0xff);
		FUNC0(packet, (length >> 16) & 0xff);
	} else {
		FUNC0(packet, (gchar)254);

		FUNC0(packet, (length >> 0) & 0xff);
		FUNC0(packet, (length >> 8) & 0xff);
		FUNC0(packet, (length >> 16) & 0xff);
		FUNC0(packet, (length >> 24) & 0xff);

		FUNC0(packet, (length >> 32) & 0xff);
		FUNC0(packet, (length >> 40) & 0xff);
		FUNC0(packet, (length >> 48) & 0xff);
		FUNC0(packet, (length >> 56) & 0xff);
	}

	return 0;
}