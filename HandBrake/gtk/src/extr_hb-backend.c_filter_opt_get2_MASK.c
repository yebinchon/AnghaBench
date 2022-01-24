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
typedef  int /*<<< orphan*/  hb_filter_param_t ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int GhbType ;

/* Variables and functions */
#define  GHB_BOOL 131 
#define  GHB_DOUBLE 130 
#define  GHB_INT 129 
#define  GHB_STRING 128 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static GhbValue *
FUNC6(const char *name, const GhbValue *gval, GhbType type,
               int filter_id, int preset)
{
    GhbValue *result = NULL;
    hb_filter_param_t * param;

    if (preset)
    {
        param = FUNC2(filter_id);
    }
    else
    {
        param = FUNC3(filter_id);
    }
    switch (type)
    {
        case GHB_DOUBLE:
        case GHB_BOOL:
        case GHB_INT:
        {
            int val;
            val = FUNC4(param, gval);
            return FUNC0(val);
        } break;
        case GHB_STRING:
        {
            const char *val;
            val = FUNC5(param, gval);
            return FUNC1(val);
        } break;
    }
    return result;
}