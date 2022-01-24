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
struct pf_ruleset {int dummy; } ;
struct pf_anchor {char* owner; struct pf_ruleset ruleset; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 struct pf_anchor* FUNC0 (char const*) ; 
 struct pf_ruleset pf_main_ruleset ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

struct pf_ruleset *
FUNC2(const char *path, const char *owner, int is_anchor,
    int *error)
{
	struct pf_anchor	*anchor;

	while (*path == '/')
		path++;
	if (!*path)
		return (&pf_main_ruleset);
	anchor = FUNC0(path);
	if (anchor == NULL) {
		*error = EINVAL;
		return (NULL);
	} else {
		if ((owner && (!FUNC1(owner, anchor->owner)))
		    || (is_anchor && !FUNC1(anchor->owner, "")))
			return (&anchor->ruleset);
		*error = EPERM;
		return NULL;
	}
}