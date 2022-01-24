#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_6__* data; } ;
typedef  TYPE_1__ network_packet ;
typedef  int /*<<< orphan*/  network_mysqld_frm ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
struct TYPE_11__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GMappedFile ;
typedef  TYPE_2__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 () ; 

int FUNC14(
		const char *filename,
		const char *myd_filename) {
	network_packet *packet;
	GMappedFile *f;
	GError *gerr = NULL;
	network_mysqld_frm *frm;
	int err = 0;

	f = FUNC5(filename, FALSE, &gerr);
	if (!f) {
		FUNC0("%s: %s",
				G_STRLOC,
				gerr->message);
		FUNC1(gerr);
		return -1;
	}

	packet = FUNC13();
	packet->data = FUNC7(NULL);

	packet->data->str = FUNC3(f);
	packet->data->len = FUNC4(f);

	frm = FUNC8();
	err = err || FUNC11(packet, frm);
	if (!err) {
		FUNC9(frm);
		FUNC10(frm, myd_filename);
	}

	FUNC2(f);

	FUNC6(packet->data, FALSE);
	FUNC12(packet);

	return err ? -1 : 0;
}