#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ui_geo ;
struct TYPE_16__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_4__ json_error_t ;
struct TYPE_15__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_17__ {TYPE_3__ par; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_5__ hb_geometry_t ;
struct TYPE_13__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_14__ {TYPE_1__ par; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_18__ {int /*<<< orphan*/ * crop; int /*<<< orphan*/  maxHeight; int /*<<< orphan*/  maxWidth; int /*<<< orphan*/  modulus; int /*<<< orphan*/  itu_par; int /*<<< orphan*/  keep; int /*<<< orphan*/  mode; TYPE_2__ geometry; } ;
typedef  TYPE_6__ hb_geometry_settings_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

char* FUNC11(const char * json_param)
{
    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    hb_geometry_t geo_result;
    hb_geometry_t src;
    hb_geometry_settings_t ui_geo;

    // Clear dest geometry since some fields are optional.
    FUNC8(&ui_geo, 0, sizeof(ui_geo));

    dict = FUNC5(json_param);
    json_result = FUNC7(dict, &error, 0,
    "{"
    // SourceGeometry
    //  {Width, Height, PAR {Num, Den}}
    "s:{s:i, s:i, s:{s:i, s:i}},"
    // DestSettings
    "s:{"
    //   Geometry {Width, Height, PAR {Num, Den}},
    "s:{s:i, s:i, s:{s:i, s:i}},"
    //   AnamorphicMode, Keep, ItuPAR, Modulus, MaxWidth, MaxHeight,
    "s:i, s?i, s?b, s:i, s:i, s:i,"
    //   Crop [Top, Bottom, Left, Right]
    "s?[iiii]"
    "  }"
    "}",
    "SourceGeometry",
        "Width",                FUNC10(&src.width),
        "Height",               FUNC10(&src.height),
        "PAR",
            "Num",              FUNC10(&src.par.num),
            "Den",              FUNC10(&src.par.den),
    "DestSettings",
        "Geometry",
            "Width",            FUNC10(&ui_geo.geometry.width),
            "Height",           FUNC10(&ui_geo.geometry.height),
            "PAR",
                "Num",          FUNC10(&ui_geo.geometry.par.num),
                "Den",          FUNC10(&ui_geo.geometry.par.den),
        "AnamorphicMode",       FUNC10(&ui_geo.mode),
        "Keep",                 FUNC10(&ui_geo.keep),
        "ItuPAR",               FUNC9(&ui_geo.itu_par),
        "Modulus",              FUNC10(&ui_geo.modulus),
        "MaxWidth",             FUNC10(&ui_geo.maxWidth),
        "MaxHeight",            FUNC10(&ui_geo.maxHeight),
        "Crop",                 FUNC10(&ui_geo.crop[0]),
                                FUNC10(&ui_geo.crop[1]),
                                FUNC10(&ui_geo.crop[2]),
                                FUNC10(&ui_geo.crop[3])
    );
    FUNC2(&dict);

    if (json_result < 0)
    {
        FUNC0("json unpack failure: %s", error.text);
        return NULL;
    }

    FUNC1(&src, &ui_geo, &geo_result);

    dict = FUNC6(&error, 0,
        "{s:o, s:o, s:{s:o, s:o}}",
            "Width",        FUNC4(geo_result.width),
            "Height",       FUNC4(geo_result.height),
            "PAR",
                "Num",      FUNC4(geo_result.par.num),
                "Den",      FUNC4(geo_result.par.den));
    if (dict == NULL)
    {
        FUNC0("hb_set_anamorphic_size_json: pack failure: %s", error.text);
        return NULL;
    }
    char *result = FUNC3(dict);
    FUNC2(&dict);

    return result;
}