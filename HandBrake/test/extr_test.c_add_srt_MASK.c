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
 int srtburn ; 
 char** srtcodeset ; 
 int srtdefault ; 
 char** srtfile ; 
 char** srtlang ; 
 char** srtoffset ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(hb_value_array_t *list, int track, int *one_burned)
{
    char *codeset = "ISO-8859-1";
    int64_t offset = 0;
    char *iso639_2 = "und";
    int burn = !*one_burned && srtburn == track + 1 &&
               FUNC4(IMPORTSRT);
    *one_burned |= burn;
    int def  = srtdefault == track + 1;

    if (srtcodeset && track < FUNC3(srtcodeset) && srtcodeset[track])
        codeset = srtcodeset[track];
    if (srtoffset && track < FUNC3(srtoffset) && srtoffset[track])
        offset = FUNC10(srtoffset[track], NULL, 0);
    if (srtlang && track < FUNC3(srtlang) && srtlang[track])
    {
        const iso639_lang_t *lang = FUNC9(srtlang[track]);
        if (lang != NULL)
        {
            iso639_2 = lang->iso639_2;
        }
        else
        {
            FUNC0(stderr, "Warning: Invalid SRT language (%s)\n",
                    srtlang[track]);
        }
    }

    hb_dict_t *subtitle_dict = FUNC1();
    hb_dict_t *srt_dict = FUNC1();
    FUNC2(subtitle_dict, "Import", srt_dict);
    FUNC2(subtitle_dict, "Default", FUNC6(def));
    FUNC2(subtitle_dict, "Burn", FUNC6(burn));
    FUNC2(subtitle_dict, "Offset", FUNC7(offset));
    FUNC2(srt_dict, "Format", FUNC8("SRT"));
    FUNC2(srt_dict, "Filename", FUNC8(srtfile[track]));
    FUNC2(srt_dict, "Language", FUNC8(iso639_2));
    FUNC2(srt_dict, "Codeset", FUNC8(codeset));
    FUNC5(list, subtitle_dict);
    return 0;
}