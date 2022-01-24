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
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  ENOMEM ; 
 int RTLD_LOCAL ; 
 int RTLD_NOW ; 
 int /*<<< orphan*/  SLIBSUF ; 
 char* FUNC1 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *ctx, void **handle_ptr, const char *prefix, const char *name)
{
    char *path = FUNC1("%s%s%s", prefix, name, SLIBSUF);
    if (!path)
        return FUNC0(ENOMEM);
    FUNC3(ctx, AV_LOG_DEBUG, "Looking for frei0r effect in '%s'.\n", path);
    *handle_ptr = FUNC4(path, RTLD_NOW|RTLD_LOCAL);
    FUNC2(path);
    return 0;
}