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
 char* FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(void *optctx, const char *opt, const char *arg)
{
    void *opaque = NULL;
    const char *name;

    FUNC1("Supported file protocols:\n"
           "Input:\n");
    while ((name = FUNC0(&opaque, 0)))
        FUNC1("  %s\n", name);
    FUNC1("Output:\n");
    while ((name = FUNC0(&opaque, 1)))
        FUNC1("  %s\n", name);
    return 0;
}