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
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

gboolean FUNC6(const GString *a, const GString *b) {
	char *a_ci, *b_ci;
	gsize a_ci_len, b_ci_len;
	gboolean is_equal = FALSE;

	if (FUNC2(a, b)) return TRUE;

	a_ci = FUNC3(FUNC0(a));
	a_ci_len = FUNC4(a_ci);
	
	b_ci = FUNC3(FUNC0(b));
	b_ci_len = FUNC4(b_ci);

	is_equal = FUNC5(a_ci, a_ci_len, b_ci, b_ci_len);

	FUNC1(a_ci);
	FUNC1(b_ci);

	return is_equal;
}