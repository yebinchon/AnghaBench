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
struct TYPE_6__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_7__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ hb_container_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int IMPORTSRT ; 
 int IMPORTSSA ; 
 int TRUE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_2__* FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(signal_user_data_t *ud, GhbValue *subsettings)
{
    GtkWidget *widget;

    if (subsettings != NULL)
    {
        // Update widgets with subsettings
        GhbValue *val, *import;
        gboolean burn, force, def;
        int source;

        const char *mux_id;
        const hb_container_t *mux;

        mux_id = FUNC5(ud->settings, "FileFormat");
        mux    = FUNC8(mux_id);

        import = FUNC3(subsettings, "Import");
        source = FUNC1(ud->settings, subsettings);

        val = FUNC6(subsettings, "Name");
        if (val != NULL)
        {
            FUNC10(ud, "SubtitleTrackName", val);
        }
        else
        {
            FUNC10(ud, "SubtitleTrackName", FUNC9(""));
        }

        val    = FUNC3(subsettings, "Track");
        if (val != NULL)
        {
            FUNC10(ud, "SubtitleTrack", val);

            // Hide regular subtitle widgets
            widget = FUNC0(ud->builder, "subtitle_track_label");
            FUNC12(widget, import == NULL);
            widget = FUNC0(ud->builder, "SubtitleTrack");
            FUNC12(widget, import == NULL);

            // Show import subitle widgets
            widget = FUNC0(ud->builder, "subtitle_import_grid");
            FUNC12(widget, source == IMPORTSRT ||
                                           source == IMPORTSSA);
            widget = FUNC0(ud->builder, "srt_code_label");
            FUNC12(widget, source == IMPORTSRT);
            widget = FUNC0(ud->builder, "SrtCodeset");
            FUNC12(widget, source == IMPORTSRT);

            widget = FUNC0(ud->builder, "subtitle_import_switch_box");
            FUNC12(widget, TRUE);
        }
        else
        {
            // Hide widgets not needed for "Foreign audio search"
            widget = FUNC0(ud->builder, "subtitle_track_label");
            FUNC12(widget, FALSE);
            widget = FUNC0(ud->builder, "SubtitleTrack");
            FUNC12(widget, FALSE);

            widget = FUNC0(ud->builder, "subtitle_import_grid");
            FUNC12(widget, FALSE);

            widget = FUNC0(ud->builder, "subtitle_import_switch_box");
            FUNC12(widget, FALSE);
        }

        if (import != NULL)
        {
            if (source == IMPORTSSA)
            {
                FUNC10(ud, "SubtitleSsaEnable", FUNC2(TRUE));
            }
            else
            {
                FUNC10(ud, "SubtitleSrtEnable", FUNC2(TRUE));
            }
            val = FUNC3(import, "Language");
            FUNC10(ud, "ImportLanguage", val);
            val = FUNC3(import, "Codeset");
            FUNC10(ud, "SrtCodeset", val);
            val = FUNC3(import, "Filename");
            FUNC10(ud, "ImportFile", val);
            val = FUNC3(subsettings, "Offset");
            FUNC10(ud, "ImportOffset", val);
        }
        else
        {
            FUNC10(ud, "SubtitleImportDisable", FUNC2(TRUE));
        }

        widget = FUNC0(ud->builder, "SubtitleBurned");
        FUNC11(widget, FUNC13(source) &&
                                 FUNC15(source, mux->format));

        widget = FUNC0(ud->builder, "SubtitleForced");
        FUNC11(widget, FUNC14(source));

        widget = FUNC0(ud->builder, "SubtitleDefaultTrack");
        FUNC11(widget,
                                 FUNC15(source, mux->format));

        burn = FUNC4(subsettings, "Burn");
        force = FUNC4(subsettings, "Forced");
        def = FUNC4(subsettings, "Default");

        if (!FUNC13(source))
        {
            burn = FALSE;
        }
        if (!FUNC14(source))
        {
            force = FALSE;
        }
        if (!FUNC15(source, mux->format))
        {
            def = FALSE;
            burn = TRUE;
        }
        FUNC7(subsettings, "Burn", burn);
        FUNC7(subsettings, "Forced", force);
        FUNC7(subsettings, "Default", def);
        FUNC10(ud, "SubtitleBurned", FUNC2(burn));
        FUNC10(ud, "SubtitleForced", FUNC2(force));
        FUNC10(ud, "SubtitleDefaultTrack", FUNC2(def));

    }
    else
    {
        // Hide SRT subitle widgets
        widget = FUNC0(ud->builder, "subtitle_import_grid");
        FUNC12(widget, FALSE);

        // Show regular subtitle widgets
        widget = FUNC0(ud->builder, "subtitle_track_label");
        FUNC12(widget, TRUE);
        widget = FUNC0(ud->builder, "SubtitleTrack");
        FUNC12(widget, TRUE);
    }
}