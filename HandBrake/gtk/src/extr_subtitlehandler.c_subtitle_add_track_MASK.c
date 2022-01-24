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
struct TYPE_3__ {int /*<<< orphan*/ * prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  char const gchar ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int IMPORTSRT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static GhbValue*  FUNC12(
    signal_user_data_t *ud,
    GhbValue *settings,
    int track,
    int mux,
    gboolean default_track,
    gboolean import,
    int source,
    gboolean burn,
    gboolean *burned)
{
    const char * name = NULL;
    if (track >= 0 && !import)
    {
        GhbValue * strack;

        strack = FUNC8(settings, track);
        source = FUNC2(strack, "Source");
        name   = FUNC3(strack, "Name");
    }

    burn |= !FUNC10(source, mux);

    if (*burned && burn)
    {
        // Can only burn one.  Skip others that must be burned.
        return NULL;
    }

    GhbValue *subsettings = FUNC4();
    if (import)
    {
        // Set default SRT settings
        GhbValue *import_dict;
        const gchar *pref_lang, *dir;
        gchar *filename;

        import_dict = FUNC4();
        FUNC9(subsettings, "Import", import_dict);

        FUNC7(import_dict, "Format",
                            source == IMPORTSRT ? "SRT" : "SSA");
        pref_lang = FUNC3(settings, "PreferredLanguage");
        FUNC7(import_dict, "Language", pref_lang);
        FUNC7(import_dict, "Codeset", "UTF-8");

        dir = FUNC3(ud->prefs, "SrtDir");
        filename = FUNC1("%s/none", dir);
        FUNC7(import_dict, "Filename", filename);
        FUNC0(filename);
    }

    if (name != NULL && name[0] != 0)
    {
        FUNC7(subsettings, "Name", name);
    }
    FUNC6(subsettings, "Track", track);
    FUNC6(subsettings, "Offset", 0);
    FUNC5(subsettings, "Forced", track == -1);
    FUNC5(subsettings, "Default", default_track);
    FUNC5(subsettings, "Burn", burn);
    if (burn && track != -1)
    {
        // Allow 2 tracks to be marked burned when one is
        // foreign audio search.  Extra burned track will be
        // sanitized away if foreign audio search actually finds
        // something.
        *burned = TRUE;
    }

    FUNC11(settings, subsettings);

    return subsettings;
}