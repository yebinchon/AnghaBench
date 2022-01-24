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
struct pf_anchor {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct pf_anchor* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pf_anchor*) ; 
 int /*<<< orphan*/  FUNC1 (struct pf_anchor*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pf_anchor_global ; 
 int /*<<< orphan*/  pf_anchors ; 
 int /*<<< orphan*/  FUNC2 (struct pf_anchor*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

struct pf_anchor *
FUNC5(const char *path)
{
	struct pf_anchor	*key, *found;

	key = (struct pf_anchor *)FUNC3(sizeof (*key));
	FUNC1(key, 0, sizeof (*key));
	FUNC4(key->path, path, sizeof (key->path));
	found = FUNC0(pf_anchor_global, &pf_anchors, key);
	FUNC2(key);
	return (found);
}