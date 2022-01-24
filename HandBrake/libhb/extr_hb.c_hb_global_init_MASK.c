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

/* Variables and functions */
 int /*<<< orphan*/  disable_hardware ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_decavcodeca ; 
 int /*<<< orphan*/  hb_decavcodecv ; 
 int /*<<< orphan*/  hb_deccc608 ; 
 int /*<<< orphan*/  hb_declpcm ; 
 int /*<<< orphan*/  hb_decpgssub ; 
 int /*<<< orphan*/  hb_decsrtsub ; 
 int /*<<< orphan*/  hb_decssasub ; 
 int /*<<< orphan*/  hb_dectx3gsub ; 
 int /*<<< orphan*/  hb_decutf8sub ; 
 int /*<<< orphan*/  hb_decvobsub ; 
 int /*<<< orphan*/  hb_encavcodec ; 
 int /*<<< orphan*/  hb_encavcodeca ; 
 int /*<<< orphan*/  hb_encca_aac ; 
 int /*<<< orphan*/  hb_encca_haac ; 
 int /*<<< orphan*/  hb_encqsv ; 
 int /*<<< orphan*/  hb_enctheora ; 
 int /*<<< orphan*/  hb_encvobsub ; 
 int /*<<< orphan*/  hb_encvorbis ; 
 int /*<<< orphan*/  hb_encx264 ; 
 int /*<<< orphan*/  hb_encx265 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  hb_muxer ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  hb_reader ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hb_sync_audio ; 
 int /*<<< orphan*/  hb_sync_subtitle ; 
 int /*<<< orphan*/  hb_sync_video ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11()
{
    /* Print hardening status on global init */
#if HB_PROJECT_SECURITY_HARDEN
    hb_log( "Compile-time hardening features are enabled" );
#endif

    int result = 0;

    result = FUNC6();
    if (result < 0)
    {
        FUNC3("Platform specific initialization failed!");
        return -1;
    }

#if HB_PROJECT_FEATURE_QSV
    if (!disable_hardware)
    {
        result = hb_qsv_info_init();
        if (result < 0)
        {
            hb_error("hb_qsv_info_init failed!");
            return -1;
        }
        hb_param_configure_qsv();
    }
#endif

    /* libavcodec */
    FUNC0();

    /* HB work objects */
    FUNC9(&hb_muxer);
    FUNC9(&hb_reader);
    FUNC9(&hb_sync_video);
    FUNC9(&hb_sync_audio);
    FUNC9(&hb_sync_subtitle);
    FUNC9(&hb_decavcodecv);
    FUNC9(&hb_decavcodeca);
    FUNC9(&hb_declpcm);
    FUNC9(&hb_deccc608);
    FUNC9(&hb_decpgssub);
    FUNC9(&hb_decsrtsub);
    FUNC9(&hb_decssasub);
    FUNC9(&hb_dectx3gsub);
    FUNC9(&hb_decutf8sub);
    FUNC9(&hb_decvobsub);
    FUNC9(&hb_encvobsub);
    FUNC9(&hb_encavcodec);
    FUNC9(&hb_encavcodeca);
#ifdef __APPLE__
    hb_register(&hb_encca_aac);
    hb_register(&hb_encca_haac);
#endif
    FUNC9(&hb_enctheora);
    FUNC9(&hb_encvorbis);
    FUNC9(&hb_encx264);
#if HB_PROJECT_FEATURE_X265
    hb_register(&hb_encx265);
#endif
#if HB_PROJECT_FEATURE_QSV
    if (!disable_hardware)
    {
        hb_register(&hb_encqsv);
    }
#endif

    FUNC10();
    FUNC2(disable_hardware);

    /*
     * Initialise buffer pool
     */
    FUNC1();

    // Initialize the builtin presets hb_dict_t
    FUNC7();

    return result;
}