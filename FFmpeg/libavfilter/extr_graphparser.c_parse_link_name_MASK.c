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
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static char *FUNC3(const char **buf, void *log_ctx)
{
    const char *start = *buf;
    char *name;
    (*buf)++;

    name = FUNC1(buf, "]");
    if (!name)
        goto fail;

    if (!name[0]) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Bad (empty?) label found in the following: \"%s\".\n", start);
        goto fail;
    }

    if (*(*buf)++ != ']') {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Mismatched '[' found in the following: \"%s\".\n", start);
    fail:
        FUNC0(&name);
    }

    return name;
}