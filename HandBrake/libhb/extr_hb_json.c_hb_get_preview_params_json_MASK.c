#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_3__ json_error_t ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_8__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_10__ {int mode; int keep; int itu_par; int modulus; int maxWidth; int maxHeight; int* crop; TYPE_2__ geometry; } ;
typedef  TYPE_4__ hb_geometry_settings_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char* FUNC6(int title_idx, int preview_idx,
                            int deinterlace, hb_geometry_settings_t *settings)
{
    json_error_t error;
    hb_dict_t * dict;

    dict = FUNC5(&error, 0,
        "{"
        "s:o, s:o, s:o,"
        "s:{"
        "   s:{s:o, s:o, s:{s:o, s:o}},"
        "   s:o, s:o, s:o, s:o, s:o, s:o"
        "   s:[oooo]"
        "  }"
        "}",
        "Title",                FUNC4(title_idx),
        "Preview",              FUNC4(preview_idx),
        "Deinterlace",          FUNC1(deinterlace),
        "DestSettings",
            "Geometry",
                "Width",        FUNC4(settings->geometry.width),
                "Height",       FUNC4(settings->geometry.height),
                "PAR",
                    "Num",      FUNC4(settings->geometry.par.num),
                    "Den",      FUNC4(settings->geometry.par.den),
            "AnamorphicMode",   FUNC4(settings->mode),
            "Keep",             FUNC4(settings->keep),
            "ItuPAR",           FUNC1(settings->itu_par),
            "Modulus",          FUNC4(settings->modulus),
            "MaxWidth",         FUNC4(settings->maxWidth),
            "MaxHeight",        FUNC4(settings->maxHeight),
            "Crop",             FUNC4(settings->crop[0]),
                                FUNC4(settings->crop[1]),
                                FUNC4(settings->crop[2]),
                                FUNC4(settings->crop[3])
    );
    if (dict == NULL)
    {
        FUNC0("hb_get_preview_params_json: pack failure: %s", error.text);
        return NULL;
    }

    char *result = FUNC3(dict);
    FUNC2(&dict);

    return result;
}