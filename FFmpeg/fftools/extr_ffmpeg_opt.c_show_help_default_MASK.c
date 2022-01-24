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
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_OPT_FLAG_AUDIO_PARAM ; 
 int AV_OPT_FLAG_BSF_PARAM ; 
 int AV_OPT_FLAG_DECODING_PARAM ; 
 int AV_OPT_FLAG_ENCODING_PARAM ; 
 int AV_OPT_FLAG_FILTERING_PARAM ; 
 int AV_OPT_FLAG_VIDEO_PARAM ; 
 int const OPT_AUDIO ; 
 int const OPT_EXIT ; 
 int const OPT_EXPERT ; 
 int OPT_OFFSET ; 
 int OPT_PERFILE ; 
 int OPT_SPEC ; 
 int const OPT_SUBTITLE ; 
 int const OPT_VIDEO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* program_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

void FUNC12(const char *opt, const char *arg)
{
    /* per-file options have at least one of those set */
    const int per_file = OPT_SPEC | OPT_OFFSET | OPT_PERFILE;
    int show_advanced = 0, show_avoptions = 0;

    if (opt && *opt) {
        if (!FUNC9(opt, "long"))
            show_advanced = 1;
        else if (!FUNC9(opt, "full"))
            show_advanced = show_avoptions = 1;
        else
            FUNC1(NULL, AV_LOG_ERROR, "Unknown help option '%s'.\n", opt);
    }

    FUNC8();

    FUNC5("Getting help:\n"
           "    -h      -- print basic options\n"
           "    -h long -- print more options\n"
           "    -h full -- print all options (including all format and codec specific options, very long)\n"
           "    -h type=name -- print all options for the named decoder/encoder/demuxer/muxer/filter/bsf\n"
           "    See man %s for detailed description of the options.\n"
           "\n", program_name);

    FUNC7(options, "Print help / information / capabilities:",
                      OPT_EXIT, 0, 0);

    FUNC7(options, "Global options (affect whole program "
                      "instead of just one file:",
                      0, per_file | OPT_EXIT | OPT_EXPERT, 0);
    if (show_advanced)
        FUNC7(options, "Advanced global options:", OPT_EXPERT,
                          per_file | OPT_EXIT, 0);

    FUNC7(options, "Per-file main options:", 0,
                      OPT_EXPERT | OPT_AUDIO | OPT_VIDEO | OPT_SUBTITLE |
                      OPT_EXIT, per_file);
    if (show_advanced)
        FUNC7(options, "Advanced per-file options:",
                          OPT_EXPERT, OPT_AUDIO | OPT_VIDEO | OPT_SUBTITLE, per_file);

    FUNC7(options, "Video options:",
                      OPT_VIDEO, OPT_EXPERT | OPT_AUDIO, 0);
    if (show_advanced)
        FUNC7(options, "Advanced Video options:",
                          OPT_EXPERT | OPT_VIDEO, OPT_AUDIO, 0);

    FUNC7(options, "Audio options:",
                      OPT_AUDIO, OPT_EXPERT | OPT_VIDEO, 0);
    if (show_advanced)
        FUNC7(options, "Advanced Audio options:",
                          OPT_EXPERT | OPT_AUDIO, OPT_VIDEO, 0);
    FUNC7(options, "Subtitle options:",
                      OPT_SUBTITLE, 0, 0);
    FUNC5("\n");

    if (show_avoptions) {
        int flags = AV_OPT_FLAG_DECODING_PARAM | AV_OPT_FLAG_ENCODING_PARAM;
        FUNC6(FUNC2(), flags);
        FUNC6(FUNC4(), flags);
#if CONFIG_SWSCALE
        show_help_children(sws_get_class(), flags);
#endif
#if CONFIG_SWRESAMPLE
        show_help_children(swr_get_class(), AV_OPT_FLAG_AUDIO_PARAM);
#endif
        FUNC6(FUNC3(), AV_OPT_FLAG_VIDEO_PARAM | AV_OPT_FLAG_AUDIO_PARAM | AV_OPT_FLAG_FILTERING_PARAM);
        FUNC6(FUNC0(), AV_OPT_FLAG_VIDEO_PARAM | AV_OPT_FLAG_AUDIO_PARAM | AV_OPT_FLAG_BSF_PARAM);
    }
}