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
struct TYPE_3__ {char* iso639_2; } ;
typedef  TYPE_1__ iso639_lang_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMPORTSRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (char*) ; 
 int ssaburn ; 
 int ssadefault ; 
 char** ssafile ; 
 char** ssalang ; 
 char** ssaoffset ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(hb_value_array_t *list, int track, int *one_burned)
{
    int64_t offset = 0;
    char *iso639_2 = "und";
    int burn = !*one_burned && ssaburn == track + 1 &&
               FUNC4(IMPORTSRT);
    *one_burned |= burn;
    int def  = ssadefault == track + 1;

    if (ssaoffset && track < FUNC3(ssaoffset) && ssaoffset[track])
        offset = FUNC10(ssaoffset[track], NULL, 0);
    if (ssalang && track < FUNC3(ssalang) && ssalang[track])
    {
        const iso639_lang_t *lang = FUNC9(ssalang[track]);
        if (lang != NULL)
        {
            iso639_2 = lang->iso639_2;
        }
        else
        {
            FUNC0(stderr, "Warning: Invalid SRT language (%s)\n",
                    ssalang[track]);
        }
    }

    hb_dict_t *subtitle_dict = FUNC1();
    hb_dict_t *ssa_dict = FUNC1();
    FUNC2(subtitle_dict, "Import", ssa_dict);
    FUNC2(subtitle_dict, "Default", FUNC6(def));
    FUNC2(subtitle_dict, "Burn", FUNC6(burn));
    FUNC2(subtitle_dict, "Offset", FUNC7(offset));
    FUNC2(ssa_dict, "Format", FUNC8("SSA"));
    FUNC2(ssa_dict, "Filename", FUNC8(ssafile[track]));
    FUNC2(ssa_dict, "Language", FUNC8(iso639_2));
    FUNC5(list, subtitle_dict);
    return 0;
}