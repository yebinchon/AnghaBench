#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_8__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC12(signal_user_data_t *ud)
{
    GhbValue *subtitle_list;
    GhbValue *subsettings;
    gint ii;
    gboolean one_burned = FALSE;

    subtitle_list = FUNC7(ud->settings);
    if (subtitle_list == NULL)
        return;

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC5(ud->settings, "FileFormat");
    mux = FUNC8(mux_id);

    for (ii = 0; ii < FUNC2(subtitle_list); )
    {
        gboolean burned;
        int source;

        subsettings = FUNC1(subtitle_list, ii);
        burned = FUNC4(subsettings, "Burn");
        source = FUNC0(ud->settings, subsettings);
        burned = burned || !FUNC9(source, mux->format);
        if (burned && one_burned)
        {
            FUNC3(subtitle_list, ii);
            continue;
        }
        one_burned = one_burned || burned;
        FUNC6(subsettings, "Burn", burned);
        ii++;
    }
    subsettings = FUNC10(ud, NULL);
    if (subsettings != NULL)
    {
        FUNC11(ud, subsettings);
    }
}