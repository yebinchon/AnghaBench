#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_9__ {int num; int den; } ;
struct TYPE_11__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_10__ {TYPE_3__ geometry; int /*<<< orphan*/  crop; int /*<<< orphan*/  list_chapter; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  TYPE_3__ hb_geometry_t ;
struct TYPE_12__ {int* crop; int modulus; scalar_t__ mode; int keep; int itu_par; TYPE_3__ geometry; void* maxHeight; void* maxWidth; } ;
typedef  TYPE_4__ hb_geometry_settings_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ HB_ANAMORPHIC_AUTO ; 
 scalar_t__ HB_ANAMORPHIC_CUSTOM ; 
 scalar_t__ HB_ANAMORPHIC_LOOSE ; 
 scalar_t__ HB_ANAMORPHIC_NONE ; 
 scalar_t__ HB_ANAMORPHIC_STRICT ; 
 int HB_FILTER_CROP_SCALE ; 
 int HB_KEEP_DISPLAY_ASPECT ; 
 int HB_KEEP_HEIGHT ; 
 int HB_KEEP_WIDTH ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const**) ; 
 int FUNC15 (void*) ; 
 void* FUNC16 (void*) ; 
 char* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char const*,char*) ; 

int FUNC22(hb_handle_t *h, int title_index,
                          const hb_dict_t *preset, hb_dict_t *job_dict)
{
    // Apply preset settings  that requires the title
    hb_title_t *title = FUNC7(h, title_index);
    if (title == NULL)
        return -1;

    int chapters = FUNC15(FUNC3(preset, "ChapterMarkers"));
    if (FUNC8(title->list_chapter) <= 1)
        chapters = 0;

    // Set "Destination" settings in job
    hb_dict_t *dest_dict = FUNC3(job_dict, "Destination");
    FUNC5(dest_dict, "ChapterMarkers", FUNC13(chapters));

    hb_dict_t *filters_dict = FUNC3(job_dict, "Filters");
    hb_value_array_t *filter_list = FUNC3(filters_dict, "FilterList");

    // Calculate default job geometry settings
    hb_geometry_t srcGeo, resultGeo;
    hb_geometry_settings_t geo;
    int keep_aspect;

    srcGeo = title->geometry;
    if (!FUNC15(FUNC3(preset, "PictureAutoCrop")))
    {
        geo.crop[0] = FUNC16(FUNC3(preset, "PictureTopCrop"));
        geo.crop[1] = FUNC16(FUNC3(preset, "PictureBottomCrop"));
        geo.crop[2] = FUNC16(FUNC3(preset, "PictureLeftCrop"));
        geo.crop[3] = FUNC16(FUNC3(preset, "PictureRightCrop"));
    }
    else
    {
        FUNC20(geo.crop, title->crop, sizeof(geo.crop));
    }
    geo.modulus = FUNC16(FUNC3(preset, "PictureModulus"));
    if (geo.modulus < 2)
        geo.modulus = 2;
    if (FUNC15(FUNC3(preset, "PictureLooseCrop")))
    {
        // Crop a few extra pixels to avoid scaling to fit Modulus
        int extra1, extra2, crop_width, crop_height, width, height;

        crop_width = srcGeo.width - geo.crop[2] - geo.crop[3];
        crop_height = srcGeo.height - geo.crop[0] - geo.crop[1];
        width = FUNC1(crop_width, geo.modulus);
        height = FUNC1(crop_height, geo.modulus);

        extra1 = FUNC0((crop_height - height) / 2);
        extra2 = crop_height - height - extra1;
        geo.crop[0] += extra1;
        geo.crop[1] += extra2;
        extra1 = FUNC0((crop_width - width) / 2);
        extra2 = crop_width - width - extra1;
        geo.crop[2] += extra1;
        geo.crop[3] += extra2;
    }
    hb_value_t *ana_mode_value = FUNC3(preset, "PicturePAR");
    if (FUNC19(ana_mode_value) == HB_VALUE_TYPE_STRING)
    {
        const char *s = FUNC17(ana_mode_value);
        if (!FUNC21(s, "off"))
            geo.mode = HB_ANAMORPHIC_NONE;
        else if (!FUNC21(s, "strict"))
            geo.mode = HB_ANAMORPHIC_STRICT;
        else if (!FUNC21(s, "custom"))
            geo.mode = HB_ANAMORPHIC_CUSTOM;
        else if (!FUNC21(s, "auto"))
            geo.mode = HB_ANAMORPHIC_AUTO;
        else // default loose
            geo.mode = HB_ANAMORPHIC_LOOSE;
    }
    else
    {
        geo.mode = FUNC16(FUNC3(preset, "PicturePAR"));
    }
    keep_aspect = FUNC15(FUNC3(preset, "PictureKeepRatio"));
    if (geo.mode == HB_ANAMORPHIC_STRICT ||
        geo.mode == HB_ANAMORPHIC_LOOSE  ||
        geo.mode == HB_ANAMORPHIC_AUTO)
    {
        keep_aspect = 1;
    }
    geo.keep = keep_aspect * HB_KEEP_DISPLAY_ASPECT;
    geo.itu_par = FUNC15(FUNC3(preset, "PictureItuPAR"));
    geo.maxWidth = FUNC16(FUNC3(preset, "PictureWidth"));
    geo.maxHeight = FUNC16(FUNC3(preset, "PictureHeight"));
    geo.geometry = title->geometry;
    int width = FUNC16(FUNC3(preset, "PictureForceWidth"));
    int height = FUNC16(FUNC3(preset, "PictureForceHeight"));
    if (width > 0)
    {
        geo.geometry.width = width;
        geo.keep |= HB_KEEP_WIDTH;
    }
    else
    {
        geo.geometry.width -= geo.crop[2] + geo.crop[3];
    }
    if (height > 0)
    {
        geo.geometry.height = height;
        geo.keep |= HB_KEEP_HEIGHT;
    }
    else
    {
        geo.geometry.height -= geo.crop[0] + geo.crop[1];
    }
    if (geo.mode == HB_ANAMORPHIC_CUSTOM && !keep_aspect)
    {
        int dar_width;
        dar_width = FUNC16(FUNC3(preset, "PictureDARWidth"));
        if (dar_width > 0)
        {
            geo.geometry.par.num = dar_width;
            geo.geometry.par.den = geo.geometry.width;
        }
        else
        {
            geo.geometry.par.num =
                FUNC16(FUNC3(preset, "PicturePARWidth"));
            geo.geometry.par.den =
                FUNC16(FUNC3(preset, "PicturePARHeight"));
        }
    }
    FUNC11(&srcGeo, &geo, &resultGeo);
    hb_dict_t *par_dict = FUNC3(job_dict, "PAR");
    FUNC5(par_dict, "Num", FUNC18(resultGeo.par.num));
    FUNC5(par_dict, "Den", FUNC18(resultGeo.par.den));
    par_dict = NULL;

    hb_dict_t *filter_dict;
    hb_dict_t *filter_settings;

    filter_settings = FUNC4();
    FUNC5(filter_settings, "width", FUNC18(resultGeo.width));
    FUNC5(filter_settings, "height", FUNC18(resultGeo.height));
    FUNC5(filter_settings, "crop-top", FUNC18(geo.crop[0]));
    FUNC5(filter_settings, "crop-bottom", FUNC18(geo.crop[1]));
    FUNC5(filter_settings, "crop-left", FUNC18(geo.crop[2]));
    FUNC5(filter_settings, "crop-right", FUNC18(geo.crop[3]));
    if (FUNC12(HB_FILTER_CROP_SCALE, filter_settings))
    {
        FUNC6("hb_preset_apply_title: Internal error, invalid CROP_SCALE");
        FUNC14(&filter_settings);
        goto fail;
    }

    filter_dict = FUNC4();
    FUNC5(filter_dict, "ID", FUNC18(HB_FILTER_CROP_SCALE));
    FUNC5(filter_dict, "Settings", filter_settings);
    FUNC2(filter_list, filter_dict);
    // Audio settings
    if (FUNC9(h, title_index, preset, job_dict) != 0)
    {
        goto fail;
    }

    // Subtitle settings
    if (FUNC10(h, title_index, preset, job_dict) != 0)
    {
        goto fail;
    }
    return 0;

fail:
    return -1;
}