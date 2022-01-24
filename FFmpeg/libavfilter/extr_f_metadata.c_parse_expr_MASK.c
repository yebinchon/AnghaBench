#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {double* var_values; int /*<<< orphan*/  expr; } ;
typedef  TYPE_1__ MetadataContext ;

/* Variables and functions */
 size_t VAR_VALUE1 ; 
 size_t VAR_VALUE2 ; 
 int FUNC0 (int /*<<< orphan*/ ,double*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,char*,double*) ; 

__attribute__((used)) static int FUNC2(MetadataContext *s, const char *value1, const char *value2)
{
    double f1, f2;

    if (FUNC1(value1, "%lf", &f1) + FUNC1(value2, "%lf", &f2) != 2)
        return 0;

    s->var_values[VAR_VALUE1] = f1;
    s->var_values[VAR_VALUE2] = f2;

    return FUNC0(s->expr, s->var_values, NULL);
}