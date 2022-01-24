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
struct TYPE_3__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC14(GhbValue *settings, GhbValue *subsettings)
{
    // Add the current subtitle settings to the list.
    GhbValue *subtitle_list;
    gint count;
    gboolean burn, forced, def;
    gint source;

    subtitle_list = FUNC7(settings);
    if (subtitle_list == NULL)
    {
        FUNC0("No subtitle list!");
        return;
    }

    // Validate some settings
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC5(settings, "FileFormat");
    mux = FUNC8(mux_id);

    source = FUNC1(settings, subsettings);
    burn = FUNC4(subsettings, "Burn");
    if (burn && !FUNC9(source))
    {
        burn = FALSE;
        FUNC6(subsettings, "Burn", burn);
    }
    if (!burn && !FUNC11(source, mux->format))
    {
        burn = TRUE;
        FUNC6(subsettings, "Burn", burn);
        FUNC6(subsettings, "Default", FALSE);
    }
    def = FUNC4(subsettings, "Default");
    forced = FUNC4(subsettings, "Forced");
    if (forced && !FUNC10(source))
    {
        forced = FALSE;
        FUNC6(subsettings, "Forced", forced);
    }

    FUNC2(subtitle_list, subsettings);

    // Check consistency of exclusive flags
    count = FUNC3(subtitle_list);
    if (burn)
        FUNC12(settings, count-1);
    if (def)
        FUNC13(settings, count-1);
}