#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fmt_str ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  prng; int /*<<< orphan*/  var_values; } ;
typedef  TYPE_1__ DrawTextContext ;
typedef  TYPE_2__ AVFilterContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FE_ALL_EXCEPT ; 
 int FE_INVALID ; 
 int FE_OVERFLOW ; 
 int FE_UNDERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (double*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  fun2 ; 
 int /*<<< orphan*/  fun2_names ; 
 int FUNC7 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 int /*<<< orphan*/  var_names ; 

__attribute__((used)) static int FUNC9(AVFilterContext *ctx, AVBPrint *bp,
                          char *fct, unsigned argc, char **argv, int tag)
{
    DrawTextContext *s = ctx->priv;
    double res;
    int intval;
    int ret;
    unsigned int positions = 0;
    char fmt_str[30] = "%";

    /*
     * argv[0] expression to be converted to `int`
     * argv[1] format: 'x', 'X', 'd' or 'u'
     * argv[2] positions printed (optional)
     */

    ret = FUNC2(&res, argv[0], var_names, s->var_values,
                                 NULL, NULL, fun2_names, fun2,
                                 &s->prng, 0, ctx);
    if (ret < 0) {
        FUNC3(ctx, AV_LOG_ERROR,
               "Expression '%s' for the expr text expansion function is not valid\n",
               argv[0]);
        return ret;
    }

    if (!FUNC8("xXdu", argv[1][0])) {
        FUNC3(ctx, AV_LOG_ERROR, "Invalid format '%c' specified,"
                " allowed values: 'x', 'X', 'd', 'u'\n", argv[1][0]);
        return FUNC0(EINVAL);
    }

    if (argc == 3) {
        ret = FUNC7(argv[2], "%u", &positions);
        if (ret != 1) {
            FUNC3(ctx, AV_LOG_ERROR, "expr_int_format(): Invalid number of positions"
                    " to print: '%s'\n", argv[2]);
            return FUNC0(EINVAL);
        }
    }

    FUNC5(FE_ALL_EXCEPT);
    intval = res;
    if ((ret = FUNC6(FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW))) {
        FUNC3(ctx, AV_LOG_ERROR, "Conversion of floating-point result to int failed. Control register: 0x%08x. Conversion result: %d\n", ret, intval);
        return FUNC0(EINVAL);
    }

    if (argc == 3)
        FUNC4(fmt_str, sizeof(fmt_str), "0%u", positions);
    FUNC4(fmt_str, sizeof(fmt_str), "%c", argv[1][0]);

    FUNC3(ctx, AV_LOG_DEBUG, "Formatting value %f (expr '%s') with spec '%s'\n",
            res, argv[0], fmt_str);

    FUNC1(bp, fmt_str, intval);

    return 0;
}