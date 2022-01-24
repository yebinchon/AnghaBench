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
typedef  int /*<<< orphan*/  guchar ;
typedef  int /*<<< orphan*/  gsize ;
struct TYPE_4__ {int /*<<< orphan*/  len; scalar_t__ str; int /*<<< orphan*/  allocated_len; } ;
typedef  TYPE_1__ GString ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(GString *response, const char *password, gsize password_len) {
	GChecksum *cs;

	/* first round: SHA1(password) */
	cs = FUNC2(G_CHECKSUM_SHA1);

	FUNC4(cs, (guchar *)password, password_len);

	FUNC5(response, FUNC3(G_CHECKSUM_SHA1));
	response->len = response->allocated_len; /* will be overwritten with the right value in the next step */
	FUNC1(cs, (guchar *)response->str, &(response->len));

	FUNC0(cs);
	
	return 0;
}