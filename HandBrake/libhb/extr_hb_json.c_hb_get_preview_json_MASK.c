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
typedef  int /*<<< orphan*/  settings ;
struct TYPE_16__ {int /*<<< orphan*/  text; } ;
typedef  TYPE_4__ json_error_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_17__ {int format; int width; int height; TYPE_3__* plane; } ;
typedef  TYPE_5__ hb_image_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_18__ {int mode; int keep; int itu_par; int modulus; int maxWidth; int maxHeight; int* crop; TYPE_2__ geometry; } ;
typedef  TYPE_6__ hb_geometry_settings_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;
struct TYPE_15__ {int width; int height; int stride; int height_stride; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,int,int,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC15 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 int /*<<< orphan*/  FUNC19 (int*) ; 

char* FUNC20(hb_handle_t * h, const char *json_param)
{
    hb_image_t *image;
    int ii, title_idx, preview_idx, deinterlace = 0;

    int json_result;
    json_error_t error;
    hb_dict_t * dict;
    hb_geometry_settings_t settings;

    // Clear dest geometry since some fields are optional.
    FUNC16(&settings, 0, sizeof(settings));

    dict = FUNC12(json_param);
    json_result = FUNC15(dict, &error, 0,
    "{"
    // Title, Preview, Deinterlace
    "s:i, s:i, s?b,"
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
    "Title",                    FUNC19(&title_idx),
    "Preview",                  FUNC19(&preview_idx),
    "Deinterlace",              FUNC18(&deinterlace),
    "DestSettings",
        "Geometry",
            "Width",            FUNC19(&settings.geometry.width),
            "Height",           FUNC19(&settings.geometry.height),
            "PAR",
                "Num",          FUNC19(&settings.geometry.par.num),
                "Den",          FUNC19(&settings.geometry.par.den),
        "AnamorphicMode",       FUNC19(&settings.mode),
        "Keep",                 FUNC19(&settings.keep),
        "ItuPAR",               FUNC18(&settings.itu_par),
        "Modulus",              FUNC19(&settings.modulus),
        "MaxWidth",             FUNC19(&settings.maxWidth),
        "MaxHeight",            FUNC19(&settings.maxHeight),
        "Crop",                 FUNC19(&settings.crop[0]),
                                FUNC19(&settings.crop[1]),
                                FUNC19(&settings.crop[2]),
                                FUNC19(&settings.crop[3])
    );
    FUNC9(&dict);

    if (json_result < 0)
    {
        FUNC4("preview params: json unpack failure: %s", error.text);
        return NULL;
    }

    image = FUNC5(h, title_idx, preview_idx, &settings, deinterlace);
    if (image == NULL)
    {
        return NULL;
    }

    dict = FUNC14(&error, 0,
        "{s:o, s:o, s:o}",
            "Format",       FUNC11(image->format),
            "Width",        FUNC11(image->width),
            "Height",       FUNC11(image->height));
    if (dict == NULL)
    {
        FUNC4("hb_get_preview_json: pack failure: %s", error.text);
        return NULL;
    }

    hb_value_array_t * planes = FUNC8();
    for (ii = 0; ii < 4; ii++)
    {
        int base64size = FUNC0(image->plane[ii].size);
        if (image->plane[ii].size <= 0 || base64size <= 0)
            continue;

        char *plane_base64 = FUNC2(base64size, 1);
        FUNC1(plane_base64, base64size,
                         image->plane[ii].data, image->plane[ii].size);

        base64size = FUNC17(plane_base64);
        hb_dict_t *plane_dict;
        plane_dict = FUNC14(&error, 0,
            "{s:o, s:o, s:o, s:o, s:o, s:o}",
            "Width",        FUNC11(image->plane[ii].width),
            "Height",       FUNC11(image->plane[ii].height),
            "Stride",       FUNC11(image->plane[ii].stride),
            "HeightStride", FUNC11(image->plane[ii].height_stride),
            "Size",         FUNC11(base64size),
            "Data",         FUNC13(plane_base64)
        );
        if (plane_dict == NULL)
        {
            FUNC4("plane_dict: json pack failure: %s", error.text);
            return NULL;
        }
        FUNC7(planes, plane_dict);
    }
    FUNC3(dict, "Planes", planes);
    FUNC6(&image);

    char *result = FUNC10(dict);
    FUNC9(&dict);

    return result;
}