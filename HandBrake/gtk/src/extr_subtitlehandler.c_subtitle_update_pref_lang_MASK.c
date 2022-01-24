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
struct TYPE_5__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_6__ {char* iso639_2; char* native_name; char* eng_name; } ;
typedef  TYPE_2__ iso639_lang_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkLabel ;
typedef  int /*<<< orphan*/  GtkButton ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC12(signal_user_data_t *ud, const iso639_lang_t *lang)
{
    GtkLabel *label;
    GtkButton *button;
    gchar *str;
    const char * name = FUNC4("None");
    const char * code = "und";

    label = FUNC2(FUNC0(ud->builder, "subtitle_preferred_language"));
    if (lang != NULL)
    {
        code = lang->iso639_2;
        if (FUNC11(code, "und", 4))
        {
            name = lang->native_name && lang->native_name[0] ?
                                lang->native_name : lang->eng_name;
        }
    }

    str = FUNC6(FUNC4("Preferred Language: %s"), name);
    FUNC9(label, str);
    FUNC5(str);

    FUNC7(ud->settings, "PreferredLanguage", code);

    // If there is no preferred language, disable options that require
    // a preferred language to be set.
    gboolean sensitive = !(lang == NULL || !FUNC11(code, "und", 4));
    button = FUNC1(FUNC0(ud->builder,
                                  "SubtitleAddForeignAudioSubtitle"));
    if (sensitive)
    {
        str = FUNC6(
            FUNC4("Add %s subtitle track if default audio is not %s"), name, name);
    }
    else
    {
        str = FUNC6(
            FUNC4("Add subtitle track if default audio is not your preferred language"));
    }
    FUNC8(button, str);
    FUNC5(str);

    FUNC10(FUNC3(button), sensitive);
    button = FUNC1(FUNC0(ud->builder,
                                  "SubtitleAddForeignAudioSearch"));
    FUNC10(FUNC3(button), sensitive);
}