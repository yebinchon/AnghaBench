#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pfioc_rule {char* anchor_call; } ;
struct pf_ruleset {TYPE_1__* anchor; } ;
struct pf_rule {int anchor_relative; scalar_t__ anchor_wildcard; TYPE_2__* anchor; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_3__ {char* path; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,scalar_t__) ; 
 char* FUNC8 (char*,char) ; 

int
FUNC9(const struct pf_ruleset *rs, const struct pf_rule *r,
    struct pfioc_rule *pr)
{
	pr->anchor_call[0] = 0;
	if (r->anchor == NULL)
		return (0);
	if (!r->anchor_relative) {
		FUNC5(pr->anchor_call, "/", sizeof (pr->anchor_call));
		FUNC4(pr->anchor_call, r->anchor->path,
		    sizeof (pr->anchor_call));
	} else {
		char	*a, *p;
		int	 i;

		a = (char *)FUNC3(MAXPATHLEN);
		FUNC0(a, MAXPATHLEN);
		if (rs->anchor == NULL)
			a[0] = 0;
		else
			FUNC5(a, rs->anchor->path, MAXPATHLEN);
		for (i = 1; i < r->anchor_relative; ++i) {
			if ((p = FUNC8(a, '/')) == NULL)
				p = a;
			*p = 0;
			FUNC4(pr->anchor_call, "../",
			    sizeof (pr->anchor_call));
		}
		if (FUNC7(a, r->anchor->path, FUNC6(a))) {
			FUNC1("pf_anchor_copyout: '%s' '%s'\n", a,
			    r->anchor->path);
			FUNC2(a);
			return (1);
		}
		if (FUNC6(r->anchor->path) > FUNC6(a))
			FUNC4(pr->anchor_call, r->anchor->path + (a[0] ?
			    FUNC6(a) + 1 : 0), sizeof (pr->anchor_call));
		FUNC2(a);
	}
	if (r->anchor_wildcard)
		FUNC4(pr->anchor_call, pr->anchor_call[0] ? "/*" : "*",
		    sizeof (pr->anchor_call));
	return (0);
}