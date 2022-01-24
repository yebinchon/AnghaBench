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
typedef  int /*<<< orphan*/  AVExpr ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC3(AVExpr **pexpr, const char *expr, void *log_ctx)
{
    int ret;
    AVExpr *old = NULL;

    if (*pexpr)
        old = *pexpr;
    ret = FUNC1(pexpr, expr, var_names,
                        NULL, NULL, NULL, NULL, 0, log_ctx);
    if (ret < 0) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Error when evaluating the volume expression '%s'\n", expr);
        *pexpr = old;
        return ret;
    }

    FUNC0(old);
    return 0;
}