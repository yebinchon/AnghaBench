#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network_packet ;
typedef  int /*<<< orphan*/  guint32 ;
struct TYPE_5__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(network_packet *packet, guint32 *_i) {
	GString *s;
	int err = 0;

	s = FUNC1(NULL);
	err = err || FUNC2(packet, s);
	if (!err) {
		char *errptr;
		guint32 i;

		i = FUNC3(s->str, &errptr, 0);

		err = err || (*errptr != '\0');

		if (!err) *_i = i;
	}

	FUNC0(s, TRUE);

	return err ? -1 : 0;
}