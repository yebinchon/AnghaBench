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
typedef  int /*<<< orphan*/  dtrace_probekey_f ;
struct TYPE_3__ {char* dtpr_mod; } ;
typedef  TYPE_1__ dtrace_probe_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  dtrace_bymod ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  dtrace_lock ; 
 int /*<<< orphan*/  dtrace_match_module ; 
 int /*<<< orphan*/  dtrace_match_string ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static dtrace_probekey_f *
FUNC3(const char *p)
{
	FUNC0(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	dtrace_probekey_f *f = FUNC2(p);
	if (f == &dtrace_match_string) {
		dtrace_probe_t template = {
			.dtpr_mod = (char *)(uintptr_t)p,
		};
		if (FUNC1(dtrace_bymod, &template) == NULL) {
			return (&dtrace_match_module);
		}
		return (&dtrace_match_string);
	}
	return f;
}