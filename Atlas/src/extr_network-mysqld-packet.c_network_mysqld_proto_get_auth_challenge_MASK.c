#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_packet ;
struct TYPE_3__ {int capabilities; int charset; int server_status; int server_version; int /*<<< orphan*/  challenge; int /*<<< orphan*/ * server_version_str; int /*<<< orphan*/  thread_id; } ;
typedef  TYPE_1__ network_mysqld_auth_challenge ;
typedef  int guint8 ;
typedef  int /*<<< orphan*/  gchar ;

/* Variables and functions */
 int CLIENT_SECURE_CONNECTION ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int*,int*,int*) ; 

int FUNC12(network_packet *packet, network_mysqld_auth_challenge *shake) {
	int maj, min, patch;
	gchar *scramble_1 = NULL, *scramble_2 = NULL;
	guint8 status;
	int err = 0;

	err = err || FUNC7(packet, &status);

	if (err) return -1;

	switch (status) {
	case 0xff:
		return -1;
	case 0x0a:
		break;
	default:
		FUNC1("%s: unknown protocol %d", 
				G_STRLOC,
				status
				);
		return -1;
	}

	err = err || FUNC8(packet, &shake->server_version_str);
	err = err || (NULL == shake->server_version_str); /* the server-version has to be set */

	err = err || FUNC6(packet, &shake->thread_id);

	/**
	 * get the scramble buf
	 *
	 * 8 byte here and some the other 12 somewhen later
	 */	
	err = err || FUNC9(packet, &scramble_1, 8);

	err = err || FUNC10(packet, 1);

	err = err || FUNC5(packet, &shake->capabilities);
	err = err || FUNC7(packet, &shake->charset);
	err = err || FUNC5(packet, &shake->server_status);
	
	err = err || FUNC10(packet, 13);
	
	if (shake->capabilities & CLIENT_SECURE_CONNECTION) {
		err = err || FUNC9(packet, &scramble_2, 12);
		err = err || FUNC10(packet, 1);
	}

	if (!err) {
		/* process the data */
	
		if (3 != FUNC11(shake->server_version_str, "%d.%d.%d%*s", &maj, &min, &patch)) {
			/* can't parse the protocol */
	
			FUNC0("%s: protocol 10, but version number not parsable", G_STRLOC);
	
			return -1;
		}
	
		/**
		 * out of range 
		 */
		if (min   < 0 || min   > 100 ||
		    patch < 0 || patch > 100 ||
		    maj   < 0 || maj   > 10) {
			FUNC0("%s: protocol 10, but version number out of range", G_STRLOC);
	
			return -1;
		}
	
		shake->server_version = 
			maj * 10000 +
			min *   100 +
			patch;
	
	
		/**
		 * scramble_1 + scramble_2 == scramble
		 *
		 * a len-encoded string
		 */
	
		FUNC4(shake->challenge, 0);
		FUNC3(shake->challenge, scramble_1, 8);
		if (scramble_2) FUNC3(shake->challenge, scramble_2, 12); /* in old-password, no 2nd scramble */
	}

	if (scramble_1) FUNC2(scramble_1);
	if (scramble_2) FUNC2(scramble_2);

	return err ? -1 : 0;
}