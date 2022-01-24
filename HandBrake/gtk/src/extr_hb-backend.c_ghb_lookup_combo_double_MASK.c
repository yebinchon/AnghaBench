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
typedef  double gdouble ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  GHB_DOUBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 double FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

gdouble
FUNC3(const gchar *name, const GhbValue *gval)
{
    if (gval == NULL)
        return 0;
    GhbValue *gresult = FUNC2(name, gval, GHB_DOUBLE);
    double result = FUNC1(gresult);
    FUNC0(&gresult);
    return result;
}