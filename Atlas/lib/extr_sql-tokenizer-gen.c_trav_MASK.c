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
typedef  void* gpointer ;
typedef  int gint ;
typedef  scalar_t__ gboolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

gboolean FUNC2(gpointer _a, gpointer _b, gpointer _udata) {
	gboolean *is_first = _udata;
	const char *key = _a;
	gint value = FUNC0(_b);

	if (!*is_first) {
		FUNC1(",");
	}
	FUNC1("\n\t%d /* %s */", value, key);

	*is_first = FALSE;
	return FALSE;
}