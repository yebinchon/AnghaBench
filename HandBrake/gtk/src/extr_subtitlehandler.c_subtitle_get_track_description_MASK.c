#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* native_name; char* eng_name; } ;
typedef  TYPE_1__ iso639_lang_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_6__ {int /*<<< orphan*/  lang; } ;
typedef  TYPE_2__ hb_subtitle_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 int IMPORTSRT ; 
 int IMPORTSSA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int,int*) ; 
 TYPE_1__* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC13(GhbValue *settings, GhbValue *subsettings)
{
    GhbValue * import;
    char *desc = NULL;

    import = FUNC6(subsettings, "Import");
    if (import != NULL)
    {
        const gchar * format = "SRT";
        const gchar * filename, * code;
        const gchar * lang;
        int           source = IMPORTSRT;
        const iso639_lang_t * iso;

        format   = FUNC8(import, "Format");
        filename = FUNC8(import, "Filename");
        lang     = FUNC8(import, "Language");
        code     = FUNC8(import, "Codeset");

        if (format != NULL && !FUNC12(format, "SSA"))
        {
            source = IMPORTSSA;
        }
        iso = FUNC11(lang);
        if (iso != NULL)
        {
            if (iso->native_name != NULL)
                lang = iso->native_name;
            else
                lang = iso->eng_name;
        }

        if (FUNC1(filename, G_FILE_TEST_IS_REGULAR))
        {
            gchar *basename;

            basename = FUNC3(filename);
            if (source == IMPORTSRT)
            {
                desc = FUNC5("%s (%s)(%s)(%s)",
                                       lang, code, format, basename);
            }
            else
            {
                desc = FUNC5("%s (%s)(%s)", lang, format, basename);
            }
            FUNC2(basename);
        }
        else
        {
            if (source == IMPORTSRT)
            {
                desc = FUNC5("%s (%s)(%s)", lang, code, format);
            }
            else
            {
                desc = FUNC5("%s (%s)", lang, format);
            }
        }
    }
    else
    {
        int title_id, titleindex;
        const hb_title_t *title;
        int track;
        hb_subtitle_t *subtitle;
        GhbValue *val;

        title_id = FUNC7(settings, "title");
        title = FUNC10(title_id, &titleindex);
        val = FUNC6(subsettings, "Track");
        track = FUNC7(subsettings, "Track");
        if (val == NULL || track < 0)
        {
            desc = FUNC4(FUNC0("Foreign Audio Scan"));
        }
        else
        {
            subtitle = FUNC9(title, track);
            if (subtitle != NULL)
            {
                desc = FUNC5("%d - %s", track + 1, subtitle->lang);
            }
        }
    }

    return desc;
}