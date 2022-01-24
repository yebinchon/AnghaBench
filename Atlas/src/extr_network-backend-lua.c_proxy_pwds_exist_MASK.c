#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* raw_pwds; } ;
typedef  TYPE_1__ network_backends_t ;
typedef  scalar_t__ guint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef  TYPE_2__ GPtrArray ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_2__*,scalar_t__) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static gboolean FUNC4(network_backends_t *bs, gchar *user) {
	GPtrArray *raw_pwds = bs->raw_pwds;

	guint i;
	for (i = 0; i < raw_pwds->len; ++i) {
		gchar *raw_pwd = FUNC1(raw_pwds, i);
		gchar *raw_pos = FUNC2(raw_pwd, ':');
		FUNC0(raw_pos);
		*raw_pos = '\0';
		if (FUNC3(user, raw_pwd) == 0) {
			*raw_pos = ':';
			return TRUE;
		}
		*raw_pos = ':';
	}

	return FALSE;
}