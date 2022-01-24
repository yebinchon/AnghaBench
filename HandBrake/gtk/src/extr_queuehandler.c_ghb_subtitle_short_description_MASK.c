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
struct TYPE_3__ {char* native_name; char* eng_name; } ;
typedef  TYPE_1__ iso639_lang_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  const GhbValue ;

/* Variables and functions */
 int IMPORTSRT ; 
 int IMPORTSSA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 TYPE_1__* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

char *
FUNC7(const GhbValue *subsource,
                               const GhbValue *subsettings)
{
    GhbValue *import;
    char *desc = NULL;

    import = FUNC3(subsettings, "Import");
    if (import != NULL)
    {
        const gchar * format = "SRT";
        const gchar * code;
        const gchar * lang;
        int           source = IMPORTSRT;
        const iso639_lang_t *iso;

        format = FUNC4(import, "Format");
        lang   = FUNC4(import, "Language");
        code   = FUNC4(import, "Codeset");

        if (format != NULL && !FUNC6(format, "SSA"))
        {
            source = IMPORTSSA;
        }
        iso = FUNC5(lang);
        if (iso != NULL)
        {
            if (iso->native_name != NULL)
                lang = iso->native_name;
            else
                lang = iso->eng_name;
        }

        if (source == IMPORTSRT)
        {
            desc = FUNC2("%s (%s)(%s)", lang, code, format);
        }
        else
        {
            desc = FUNC2("%s (%s)", lang, format);
        }
    }
    else if (subsource == NULL)
    {
        desc = FUNC1(FUNC0("Foreign Audio Scan"));
    }
    else
    {
        const char * lang = FUNC4(subsource, "Language");
        desc = FUNC2("%s", lang);
    }

    return desc;
}