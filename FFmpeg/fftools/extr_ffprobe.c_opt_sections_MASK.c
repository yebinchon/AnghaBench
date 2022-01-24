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

/* Variables and functions */
 int /*<<< orphan*/  SECTION_ID_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void *optctx, const char *opt, const char *arg)
{
    FUNC1("Sections:\n"
           "W.. = Section is a wrapper (contains other sections, no local entries)\n"
           ".A. = Section contains an array of elements of the same type\n"
           "..V = Section may contain a variable number of fields with variable keys\n"
           "FLAGS NAME/UNIQUE_NAME\n"
           "---\n");
    FUNC0(SECTION_ID_ROOT, 0);
    return 0;
}