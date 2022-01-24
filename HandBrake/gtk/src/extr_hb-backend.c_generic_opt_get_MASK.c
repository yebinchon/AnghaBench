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
typedef  int /*<<< orphan*/  combo_opts_t ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int GhbType ;

/* Variables and functions */
#define  GHB_BOOL 131 
#define  GHB_DOUBLE 130 
#define  GHB_INT 129 
#define  GHB_STRING 128 
 int /*<<< orphan*/ * FUNC0 (double) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 double FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static GhbValue *
FUNC6(const char *name, const void *vopts,
                const GhbValue *gval, GhbType type)
{
    combo_opts_t *opts = (combo_opts_t*)vopts;
    GhbValue *result = NULL;
    switch (type)
    {
        case GHB_INT:
        case GHB_BOOL:
        {
            int val;
            val = FUNC4(opts, gval);
            return FUNC1(val);
        } break;
        case GHB_DOUBLE:
        {
            double val;
            val = FUNC3(opts, gval);
            return FUNC0(val);
        } break;
        case GHB_STRING:
        {
            const char *val;
            val = FUNC5(opts, gval);
            return FUNC2(val);
        } break;
    }
    return result;
}