#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GhbDictIter ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rev_map ; 

void
FUNC11(signal_user_data_t *ud)
{
    GhbDictIter iter;
    const gchar *dep_name;
    GhbValue *value;
    GObject *dep_object;

    FUNC2("ghb_check_all_depencencies ()");
    if (rev_map == NULL) return;
    iter = FUNC4(rev_map);
    while (FUNC5(rev_map, &iter, &dep_name, &value))
    {
        gboolean sensitive;
        gboolean hide;

        dep_object = FUNC6 (ud->builder, dep_name);
        if (dep_object == NULL)
        {
            FUNC3("Failed to find dependent widget %s", dep_name);
            continue;
        }
        sensitive = FUNC1(ud, dep_name, &hide);
        FUNC9(FUNC0(dep_object), sensitive);
        FUNC8(FUNC0(dep_object), sensitive);
        if (!sensitive && hide)
        {
            FUNC7(FUNC0(dep_object));
        }
        else
        {
            FUNC10(FUNC0(dep_object));
        }
    }
}