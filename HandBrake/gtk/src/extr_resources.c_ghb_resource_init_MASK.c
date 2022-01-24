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
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gconstpointer ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GResource ;
typedef  int /*<<< orphan*/  GBytes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resources ; 

void
FUNC8()
{
    GhbValue *val;
    gsize data_size;
    GBytes *gbytes;
    gconstpointer data;

    resources = FUNC5();

    FUNC4();
    GResource *data_res = FUNC3();

    gbytes = FUNC2(data_res,
                    "/fr/handbrake/ghb/data/internal_defaults.json", 0, NULL);
    data = FUNC0(gbytes, &data_size);
    val = FUNC7(data);
    FUNC1(gbytes);
    FUNC6(resources, "internal-defaults", val);

    gbytes = FUNC2(data_res,
                    "/fr/handbrake/ghb/data/widget.deps", 0, NULL);
    data = FUNC0(gbytes, &data_size);
    val = FUNC7(data);
    FUNC1(gbytes);
    FUNC6(resources, "widget-deps", val);

    gbytes = FUNC2(data_res,
                    "/fr/handbrake/ghb/data/widget_reverse.deps", 0, NULL);
    data = FUNC0(gbytes, &data_size);
    val = FUNC7(data);
    FUNC1(gbytes);
    FUNC6(resources, "widget-reverse-deps", val);
}