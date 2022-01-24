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
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int HB_ERROR_WRONG_INPUT ; 
 char* HB_PROJECT_HOST_TITLE ; 
 char* HB_PROJECT_TITLE ; 
 char* HB_PROJECT_URL_WEBSITE ; 
 scalar_t__ FUNC2 (int,char**) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SigHandler ; 
 int /*<<< orphan*/  abitrates ; 
 char* acodec_fallback ; 
 int /*<<< orphan*/  acodecs ; 
 int /*<<< orphan*/  acompressions ; 
 char* advanced_opts ; 
 int /*<<< orphan*/  aqualities ; 
 int /*<<< orphan*/  arates ; 
 int /*<<< orphan*/  atracks ; 
 int /*<<< orphan*/  audio_copy_list ; 
 int /*<<< orphan*/  audio_dither ; 
 int /*<<< orphan*/  audio_gain ; 
 int /*<<< orphan*/  audio_lang_list ; 
 char* chroma_smooth ; 
 char* chroma_smooth_tune ; 
 char* deblock ; 
 char* deblock_tune ; 
 int /*<<< orphan*/  debug ; 
 char* decomb ; 
 char* deinterlace ; 
 char* detelecine ; 
 int done_error ; 
 int /*<<< orphan*/  dvdnav ; 
 int /*<<< orphan*/  dynamic_range_compression ; 
 char* encoder_level ; 
 char* encoder_preset ; 
 char* encoder_profile ; 
 char* encoder_tune ; 
 char* format ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,char***) ; 
 int /*<<< orphan*/  hb_cli_error_handler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 char* hqdn3d ; 
 char* input ; 
 char* lapsharp ; 
 char* lapsharp_tune ; 
 scalar_t__ main_feature ; 
 long long min_title_duration ; 
 int /*<<< orphan*/  mixdowns ; 
 char* native_language ; 
 char* nlmeans ; 
 char* nlmeans_tune ; 
 char* output ; 
 char* preset_export_desc ; 
 char* preset_export_file ; 
 char* preset_export_name ; 
 char* preset_name ; 
 int /*<<< orphan*/  preview_count ; 
 int /*<<< orphan*/ * queue_import_name ; 
 char* rotate ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  store_previews ; 
 int /*<<< orphan*/  subtitle_lang_list ; 
 int /*<<< orphan*/  subtracks ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ titleindex ; 
 int /*<<< orphan*/  titlescan ; 
 char* unsharp ; 
 char* unsharp_tune ; 

int FUNC28( int argc, char ** argv )
{
    hb_handle_t * h;

    FUNC13();
    FUNC16();
    FUNC17();

    /* Init libhb */
    h = FUNC14(4);  // Show all logging until debug level is parsed

    FUNC27(); // Terminal detection

    // Get utf8 command line if windows
    FUNC7(&argc, &argv);

    /* Parse command line */
    if( FUNC2( argc, argv ) ||
        FUNC0( argc, argv ) )
    {
        FUNC15(h, debug);
        goto cleanup;
    }

    FUNC15(h, debug);

    /* Register our error handler */
    FUNC20(&hb_cli_error_handler);

    FUNC10( dvdnav );

    /* Show version */
    FUNC5( stderr, "%s - %s - %s\n",
             HB_PROJECT_TITLE, HB_PROJECT_HOST_TITLE, HB_PROJECT_URL_WEBSITE );

    /* Geeky */
    FUNC5( stderr, "%d CPU%s detected\n", FUNC11(),
             FUNC11() > 1 ? "s" : "" );

    /* Exit ASAP on Ctrl-C */
    FUNC26( SIGINT, SigHandler );

    if (queue_import_name != NULL)
    {
        FUNC23(h);
        FUNC4(h, queue_import_name);
    }
    else
    {
        // Apply all command line overrides to the preset that are possible.
        // Some command line options are applied later to the job
        // (e.g. chapter names, explicit audio & subtitle tracks).
        hb_dict_t *preset_dict = FUNC3(preset_name);
        if (preset_dict == NULL)
        {
            // An appropriate error message should have already
            // been spilled by PreparePreset.
            done_error = HB_ERROR_WRONG_INPUT;
            goto cleanup;
        }

        if (preset_export_name != NULL)
        {
            FUNC9(preset_dict, "PresetName",
                        FUNC25(preset_export_name));
            if (preset_export_desc != NULL)
            {
                FUNC9(preset_dict, "PresetDescription",
                            FUNC25(preset_export_desc));
            }
            if (preset_export_file != NULL)
            {
                FUNC19(preset_dict, preset_export_file);
            }
            else
            {
                char *json;
                json = FUNC18(preset_dict);
                FUNC5(stdout, "%s\n", json);
            }
            // If the user requested to export a preset, but not to
            // transcode or scan a file, exit here.
            if (input == NULL ||
                (!titlescan && titleindex != 0 && output == NULL))
            {
                FUNC24(&preset_dict);
                goto cleanup;
            }
        }

        /* Feed libhb with a DVD to scan */
        FUNC5( stderr, "Opening %s...\n", input );

        if (main_feature) {
            /*
             * We need to scan for all the titles in order to
             * find the main feature
             */
            titleindex = 0;
        }

        FUNC23(h);

        FUNC21(h, input, titleindex, preview_count, store_previews,
                min_title_duration * 90000LL);

        FUNC1(h, preset_dict);
        FUNC24(&preset_dict);
    }

cleanup:
    /* Clean up */
    FUNC8(&h);
    FUNC12();
    FUNC22(audio_copy_list);
    FUNC22(abitrates);
    FUNC22(acompressions);
    FUNC22(aqualities);
    FUNC22(audio_dither);
    FUNC22(acodecs);
    FUNC22(arates);
    FUNC22(atracks);
    FUNC22(audio_lang_list);
    FUNC22(audio_gain);
    FUNC22(dynamic_range_compression);
    FUNC22(mixdowns);
    FUNC22(subtitle_lang_list);
    FUNC22(subtracks);
    FUNC6(acodec_fallback);
    FUNC6(native_language);
    FUNC6(format);
    FUNC6(input);
    FUNC6(output);
    FUNC6(preset_name);
    FUNC6(encoder_preset);
    FUNC6(encoder_tune);
    FUNC6(advanced_opts);
    FUNC6(encoder_profile);
    FUNC6(encoder_level);
    FUNC6(rotate);
    FUNC6(deblock);
    FUNC6(deblock_tune);
    FUNC6(detelecine);
    FUNC6(deinterlace);
    FUNC6(decomb);
    FUNC6(hqdn3d);
    FUNC6(nlmeans);
    FUNC6(nlmeans_tune);
    FUNC6(chroma_smooth);
    FUNC6(chroma_smooth_tune);
    FUNC6(unsharp);
    FUNC6(unsharp_tune);
    FUNC6(lapsharp);
    FUNC6(lapsharp_tune);
    FUNC6(preset_export_name);
    FUNC6(preset_export_desc);
    FUNC6(preset_export_file);

    // write a carriage return to stdout
    // avoids overlap / line wrapping when stderr is redirected
    FUNC5(stdout, "\n");
    FUNC5(stderr, "HandBrake has exited.\n");

    return done_error;
}