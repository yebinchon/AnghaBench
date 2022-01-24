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
struct TYPE_3__ {int /*<<< orphan*/  short_name; } ;
typedef  TYPE_1__ hb_container_t ;

/* Variables and functions */
 int /*<<< orphan*/ * atracks ; 
 int audio_all ; 
 int /*<<< orphan*/ * audio_lang_list ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ display_width ; 
 int /*<<< orphan*/ * format ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 char* input ; 
 int /*<<< orphan*/  mux ; 
 char* output ; 
 scalar_t__ par_height ; 
 scalar_t__ par_width ; 
 int /*<<< orphan*/ * preset_export_desc ; 
 int /*<<< orphan*/ * preset_export_file ; 
 int /*<<< orphan*/ * preset_export_name ; 
 int /*<<< orphan*/ * queue_import_name ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 int subtitle_all ; 
 int /*<<< orphan*/ * subtitle_lang_list ; 
 int /*<<< orphan*/  subtracks ; 
 scalar_t__ titleindex ; 
 int /*<<< orphan*/  titlescan ; 

__attribute__((used)) static int FUNC6( int argc, char ** argv )
{
    if (queue_import_name != NULL)
    {
        // Everything should be defined in the queue.
        return 0;
    }

    if (preset_export_name == NULL && (input == NULL || *input == '\0'))
    {
        FUNC1( stderr, "Missing input device. Run %s --help for "
                 "syntax.\n", argv[0] );
        return 1;
    }

    /* Parse format */
    if (titleindex > 0 && !titlescan)
    {
        if (preset_export_name == NULL && (output == NULL || *output == '\0'))
        {
            FUNC1( stderr, "Missing output file name. Run %s --help "
                     "for syntax.\n", argv[0] );
            return 1;
        }

        if (format == NULL && output != NULL)
        {
            /* autodetect */
            const char *extension = FUNC5(output, '.');
            if (extension != NULL)
            {
                // skip '.'
                mux = FUNC2(extension + 1);
            }
            hb_container_t * c = FUNC3(mux);
            if (c != NULL)
                format = FUNC4(c->short_name);
        }
    }

    int subtitle_track_count = FUNC0(subtracks);
    if (subtitle_track_count > 0 && subtitle_lang_list != NULL)
    {
        FUNC1(stderr,
                "Incompatible options: --subtitle-lang-list and --subtitle\n");
        return 1;
    }

    if (subtitle_track_count > 0 && subtitle_all != -1)
    {
        FUNC1(stderr,
                "Incompatible options: --all-subtitles/--first-subtitle and --subtitle\n");
        return 1;
    }

    if (atracks != NULL && audio_lang_list != NULL)
    {
        FUNC1(stderr,
                "Incompatible options: --audio-lang-list and --audio\n");
        return 1;
    }

    if (atracks != NULL && audio_all != -1)
    {
        FUNC1(stderr,
                "Incompatible options: --all-audio/--first-audio and --audio\n");
        return 1;
    }

    if ((par_width > 0 && par_height > 0) && display_width > 0)
    {
        FUNC1(stderr,
                "Incompatible options: --display-width and --pixel-aspect\n");
        return 1;
    }

    if (preset_export_file != NULL && preset_export_name == NULL)
    {
        FUNC1(stderr,
                "Error: --preset-export-file requires option --preset-export\n");
        return 1;
    }

    if (preset_export_desc != NULL && preset_export_name == NULL)
    {
        FUNC1(stderr,
                "Error: --preset-export-desc requires option --preset-export\n");
        return 1;
    }

    return 0;
}