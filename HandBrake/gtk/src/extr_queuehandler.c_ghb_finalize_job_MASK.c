#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hb_dict_t ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int HB_FILTER_CROP_SCALE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC12(GhbValue *settings)
{
    GhbValue *preset, *job;

    preset = FUNC6(settings);
    job    = FUNC0(settings, "Job");

    // Apply selected preset settings
    FUNC10(preset, job);
    FUNC11(preset, job);
    FUNC9(preset, job);

    // Add scale filter since the above does not
    GhbValue *filter_list, *filter_dict;
    int width, height, crop[4];

    filter_list = FUNC5(settings);
    width = FUNC1(settings, "scale_width");
    height = FUNC1(settings, "scale_height");

    crop[0] = FUNC1(settings, "PictureTopCrop");
    crop[1] = FUNC1(settings, "PictureBottomCrop");
    crop[2] = FUNC1(settings, "PictureLeftCrop");
    crop[3] = FUNC1(settings, "PictureRightCrop");

    hb_dict_t * dict = FUNC2();
    FUNC4(dict, "width", width);
    FUNC4(dict, "height", height);
    FUNC4(dict, "crop-top", crop[0]);
    FUNC4(dict, "crop-bottom", crop[1]);
    FUNC4(dict, "crop-left", crop[2]);
    FUNC4(dict, "crop-right", crop[3]);

    filter_dict = FUNC2();
    FUNC4(filter_dict, "ID", HB_FILTER_CROP_SCALE);
    FUNC3(filter_dict, "Settings", dict);
    FUNC8(filter_list, filter_dict);

    FUNC7(&preset);
}