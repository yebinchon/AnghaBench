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
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 char* FUNC5 (char*,int,int,int,int,int,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static void FUNC10(hb_value_t *preset)
{
    hb_value_t *val = FUNC2(preset, "PictureDeinterlaceFilter");
    if (val == NULL)
    {
        return;
    }
    const char * deint = FUNC7(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }
    if (FUNC9(deint, "decomb"))
    {
        return;
    }
    val = FUNC2(preset, "PictureDeinterlacePreset");
    if (val == NULL)
    {
        FUNC3(preset, "PictureDeinterlacePreset",
                    FUNC8("default"));
        return;
    }
    deint = FUNC7(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }
    if (!FUNC9(deint, "fast"))
    {
        // fast -> PictureCombDetectPreset fast
        //         PictureDeinterlacePreset default
        FUNC3(preset, "PictureCombDetectPreset",
                    FUNC8("fast"));
        FUNC3(preset, "PictureDeinterlacePreset",
                    FUNC8("default"));
        return;
    }
    else if (!FUNC9(deint, "bob") || !FUNC9(deint, "default"))
    {
        FUNC3(preset, "PictureCombDetectPreset",
                    FUNC8("default"));
        return;
    }
    else if (FUNC9(deint, "custom"))
    {
        // not custom -> default
        FUNC3(preset, "PictureCombDetectPreset",
                    FUNC8("default"));
        FUNC3(preset, "PictureDeinterlacePreset",
                    FUNC8("default"));
        return;
    }
    val = FUNC2(preset, "PictureDeinterlaceCustom");
    if (val == NULL)
    {
        FUNC3(preset, "PictureDeinterlacePreset",
                    FUNC8("default"));
        return;
    }
    // Translate custom values
    deint = FUNC7(val);
    if (deint == NULL)
    {
        // This really shouldn't happen for a valid preset
        return;
    }

    hb_dict_t * dict;
    dict = FUNC4(deint);

    int yadif, blend, cubic, eedi2, mask, bob, gamma, filter, composite;
    int detect_mode, decomb_mode;

    int mode = 7, spatial_metric = 2, motion_threshold = 3;
    int spatial_threshold = 3, filter_mode = 2;
    int block_threshold = 40, block_width = 16, block_height = 16;
    int magnitude_threshold = 10, variance_threshold = 20;
    int laplacian_threshold = 20;
    int dilation_threshold = 4, erosion_threshold = 2, noise_threshold = 50;
    int maximum_search_distance = 24, post_processing = 1, parity = -1;

    FUNC1(&mode, dict, "mode");
    FUNC1(&spatial_metric, dict, "spatial-metric");
    FUNC1(&motion_threshold, dict, "motion-thresh");
    FUNC1(&spatial_threshold, dict, "spatial-thresh");
    FUNC1(&filter_mode, dict, "filter-mode");
    FUNC1(&block_threshold, dict, "block-thresh");
    FUNC1(&block_width, dict, "block-width");
    FUNC1(&block_height, dict, "block-height");
    FUNC1(&magnitude_threshold, dict, "magnitude-thresh");
    FUNC1(&variance_threshold, dict, "variance-thresh");
    FUNC1(&laplacian_threshold, dict, "laplacian-thresh");
    FUNC1(&dilation_threshold, dict, "dilation-thresh");
    FUNC1(&erosion_threshold, dict, "erosion-thresh");
    FUNC1(&noise_threshold, dict, "noise-thresh");
    FUNC1(&maximum_search_distance, dict, "search-distance");
    FUNC1(&post_processing, dict, "postproc");
    FUNC1(&parity, dict, "parity");
    FUNC6(&dict);

    yadif     = !!(mode & 1);
    blend     = !!(mode & 2);
    cubic     = !!(mode & 4);
    eedi2     = !!(mode & 8);
    mask      = !!(mode & 32);
    bob       = !!(mode & 64);
    gamma     = !!(mode & 128);
    filter    = !!(mode & 256);
    composite = !!(mode & 512);

    detect_mode = gamma + filter * 2 + mask * 4 + composite * 8;
    decomb_mode = yadif + blend * 2 + cubic * 4 + eedi2 * 8 + bob * 16;

    char * custom = FUNC5("mode=%d:spatial-metric=%d:"
                                     "motion-thresh=%d:spatial-thresh=%d:"
                                     "filter-mode=%d:block-thresh=%d:"
                                     "block-width=%d:block-height=%d",
                                     detect_mode, spatial_metric,
                                     motion_threshold, spatial_threshold,
                                     filter_mode, block_threshold,
                                     block_width, block_height);
    FUNC3(preset, "PictureCombDetectCustom", FUNC8(custom));
    FUNC0(custom);

    custom = FUNC5("mode=%d:magnitude-thresh=%d:variance-thresh=%d:"
                              "laplacian-thresh=%d:dilation-thresh=%d:"
                              "erosion-thresh=%d:noise-thresh=%d:"
                              "search-distance=%d:postproc=%d:parity=%d",
                              decomb_mode, magnitude_threshold,
                              variance_threshold, laplacian_threshold,
                              dilation_threshold, erosion_threshold,
                              noise_threshold, maximum_search_distance,
                              post_processing, parity);
    FUNC3(preset, "PictureDeinterlaceCustom", FUNC8(custom));
    FUNC0(custom);
}