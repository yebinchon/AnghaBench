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
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 

__attribute__((used)) static boolean_t
FUNC2(struct vnode *dvp, const char *name)
{
    /*
     * Only names in root are protected. E.g. /dev/null is protected,
     * but /dev/foo/null isn't.
     */
    if (!FUNC1(dvp))
        return FALSE;

    if ((FUNC0("console", name) == 0) ||
        (FUNC0("tty", name) == 0) ||
        (FUNC0("null", name) == 0) ||
        (FUNC0("zero", name) == 0) ||
        (FUNC0("klog", name) == 0)) {

        return TRUE;
    }

    return FALSE;
}