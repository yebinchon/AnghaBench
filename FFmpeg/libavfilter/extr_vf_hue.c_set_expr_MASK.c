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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC7(AVExpr **pexpr_ptr, char **expr_ptr,
                    const char *expr, const char *option, void *log_ctx)
{
    int ret;
    AVExpr *new_pexpr;
    char *new_expr;

    new_expr = FUNC6(expr);
    if (!new_expr)
        return FUNC0(ENOMEM);
    ret = FUNC2(&new_pexpr, expr, var_names,
                        NULL, NULL, NULL, NULL, 0, log_ctx);
    if (ret < 0) {
        FUNC5(log_ctx, AV_LOG_ERROR,
               "Error when evaluating the expression '%s' for %s\n",
               expr, option);
        FUNC3(new_expr);
        return ret;
    }

    if (*pexpr_ptr)
        FUNC1(*pexpr_ptr);
    *pexpr_ptr = new_pexpr;
    FUNC4(expr_ptr);
    *expr_ptr = new_expr;

    return 0;
}