#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  string_validation_utf8_flags; } ;
typedef  TYPE_1__ WriterContext ;
typedef  int /*<<< orphan*/  Writer ;
struct TYPE_15__ {int /*<<< orphan*/  entries_to_show; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_SKIP_REPEATED ; 
 int /*<<< orphan*/  AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES ; 
 int /*<<< orphan*/  CHAPTERS ; 
 int /*<<< orphan*/  CHAPTER_TAGS ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FORMAT ; 
 int /*<<< orphan*/  FORMAT_TAGS ; 
 int /*<<< orphan*/  FRAMES ; 
 int /*<<< orphan*/  FRAME_TAGS ; 
 int /*<<< orphan*/  LIBRARY_VERSIONS ; 
 int /*<<< orphan*/  PACKETS ; 
 int /*<<< orphan*/  PACKET_TAGS ; 
 int /*<<< orphan*/  PIXEL_FORMATS ; 
 int /*<<< orphan*/  PIXEL_FORMAT_COMPONENTS ; 
 int /*<<< orphan*/  PIXEL_FORMAT_FLAGS ; 
 int /*<<< orphan*/  PROGRAMS ; 
 int /*<<< orphan*/  PROGRAM_STREAM_DISPOSITION ; 
 int /*<<< orphan*/  PROGRAM_STREAM_TAGS ; 
 int /*<<< orphan*/  PROGRAM_TAGS ; 
 int /*<<< orphan*/  PROGRAM_VERSION ; 
 int /*<<< orphan*/  SECTION_ID_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STREAMS ; 
 int /*<<< orphan*/  STREAM_DISPOSITION ; 
 int /*<<< orphan*/  STREAM_TAGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (char*) ; 
 char* FUNC12 (scalar_t__,char*,char**) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  chapter_tags ; 
 int /*<<< orphan*/  chapters ; 
 scalar_t__ do_bitexact ; 
 scalar_t__ do_show_chapters ; 
 scalar_t__ do_show_error ; 
 scalar_t__ do_show_format ; 
 scalar_t__ do_show_library_versions ; 
 scalar_t__ do_show_log ; 
 scalar_t__ do_show_packets ; 
 scalar_t__ do_show_pixel_formats ; 
 scalar_t__ do_show_program_version ; 
 scalar_t__ do_show_programs ; 
 scalar_t__ do_show_streams ; 
 int /*<<< orphan*/  error ; 
 int /*<<< orphan*/  ffprobe_cleanup ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  format ; 
 int /*<<< orphan*/  format_tags ; 
 int /*<<< orphan*/  frame_tags ; 
 int /*<<< orphan*/  frames ; 
 int /*<<< orphan*/  hash ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ input_filename ; 
 int /*<<< orphan*/  library_versions ; 
 int /*<<< orphan*/  log_callback ; 
 int /*<<< orphan*/  log_mutex ; 
 int /*<<< orphan*/  opt_input_file ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  packet_tags ; 
 int /*<<< orphan*/  packets ; 
 int /*<<< orphan*/  FUNC21 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pixel_format_components ; 
 int /*<<< orphan*/  pixel_format_flags ; 
 int /*<<< orphan*/  pixel_formats ; 
 scalar_t__ print_format ; 
 int FUNC23 (TYPE_1__*,scalar_t__) ; 
 char* program_name ; 
 int /*<<< orphan*/  program_tags ; 
 int /*<<< orphan*/  program_version ; 
 int /*<<< orphan*/  programs ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ read_intervals ; 
 int /*<<< orphan*/  real_options ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_5__* sections ; 
 int /*<<< orphan*/  FUNC26 (int,char**,int /*<<< orphan*/ ) ; 
 char* show_data_hash ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  stream_disposition ; 
 int /*<<< orphan*/  stream_tags ; 
 int /*<<< orphan*/  streams ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC31 (char*) ; 
 int FUNC32 (TYPE_1__**,int /*<<< orphan*/  const*,char*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  const xml_writer ; 

int FUNC36(int argc, char **argv)
{
    const Writer *w;
    WriterContext *wctx;
    char *buf;
    char *w_name = NULL, *w_args = NULL;
    int ret, i;

    FUNC19();

#if HAVE_THREADS
    ret = pthread_mutex_init(&log_mutex, NULL);
    if (ret != 0) {
        goto end;
    }
#endif
    FUNC10(AV_LOG_SKIP_REPEATED);
    FUNC25(ffprobe_cleanup);

    options = real_options;
    FUNC21(argc, argv, options);
    FUNC15();
    FUNC20();
#if CONFIG_AVDEVICE
    avdevice_register_all();
#endif

    FUNC26(argc, argv, options);
    FUNC22(NULL, argc, argv, options, opt_input_file);

    if (do_show_log)
        FUNC9(log_callback);

    /* mark things to show, based on -show_entries */
    FUNC2(CHAPTERS, chapters);
    FUNC2(ERROR, error);
    FUNC2(FORMAT, format);
    FUNC2(FRAMES, frames);
    FUNC2(LIBRARY_VERSIONS, library_versions);
    FUNC2(PACKETS, packets);
    FUNC2(PIXEL_FORMATS, pixel_formats);
    FUNC2(PIXEL_FORMAT_FLAGS, pixel_format_flags);
    FUNC2(PIXEL_FORMAT_COMPONENTS, pixel_format_components);
    FUNC2(PROGRAM_VERSION, program_version);
    FUNC2(PROGRAMS, programs);
    FUNC2(STREAMS, streams);
    FUNC2(STREAM_DISPOSITION, stream_disposition);
    FUNC2(PROGRAM_STREAM_DISPOSITION, stream_disposition);

    FUNC2(CHAPTER_TAGS, chapter_tags);
    FUNC2(FORMAT_TAGS, format_tags);
    FUNC2(FRAME_TAGS, frame_tags);
    FUNC2(PROGRAM_TAGS, program_tags);
    FUNC2(STREAM_TAGS, stream_tags);
    FUNC2(PROGRAM_STREAM_TAGS, stream_tags);
    FUNC2(PACKET_TAGS, packet_tags);

    if (do_bitexact && (do_show_program_version || do_show_library_versions)) {
        FUNC8(NULL, AV_LOG_ERROR,
               "-bitexact and -show_program_version or -show_library_versions "
               "options are incompatible\n");
        ret = FUNC0(EINVAL);
        goto end;
    }

    FUNC35();

    if (!print_format)
        print_format = FUNC11("default");
    if (!print_format) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    w_name = FUNC12(print_format, "=", &buf);
    if (!w_name) {
        FUNC8(NULL, AV_LOG_ERROR,
               "No name specified for the output format\n");
        ret = FUNC0(EINVAL);
        goto end;
    }
    w_args = buf;

    if (show_data_hash) {
        if ((ret = FUNC5(&hash, show_data_hash)) < 0) {
            if (ret == FUNC0(EINVAL)) {
                const char *n;
                FUNC8(NULL, AV_LOG_ERROR,
                       "Unknown hash algorithm '%s'\nKnown algorithms:",
                       show_data_hash);
                for (i = 0; (n = FUNC7(i)); i++)
                    FUNC8(NULL, AV_LOG_ERROR, " %s", n);
                FUNC8(NULL, AV_LOG_ERROR, "\n");
            }
            goto end;
        }
    }

    w = FUNC31(w_name);
    if (!w) {
        FUNC8(NULL, AV_LOG_ERROR, "Unknown output format with name '%s'\n", w_name);
        ret = FUNC0(EINVAL);
        goto end;
    }

    if ((ret = FUNC32(&wctx, w, w_args,
                           sections, FUNC1(sections))) >= 0) {
        if (w == &xml_writer)
            wctx->string_validation_utf8_flags |= AV_UTF8_FLAG_EXCLUDE_XML_INVALID_CONTROL_CODES;

        FUNC34(wctx, SECTION_ID_ROOT);

        if (do_show_program_version)
            FUNC18(wctx);
        if (do_show_library_versions)
            FUNC16(wctx);
        if (do_show_pixel_formats)
            FUNC17(wctx);

        if (!input_filename &&
            ((do_show_format || do_show_programs || do_show_streams || do_show_chapters || do_show_packets || do_show_error) ||
             (!do_show_program_version && !do_show_library_versions && !do_show_pixel_formats))) {
            FUNC28();
            FUNC8(NULL, AV_LOG_ERROR, "You have to specify one input file.\n");
            FUNC8(NULL, AV_LOG_ERROR, "Use -h to get full help or, even better, run 'man %s'.\n", program_name);
            ret = FUNC0(EINVAL);
        } else if (input_filename) {
            ret = FUNC23(wctx, input_filename);
            if (ret < 0 && do_show_error)
                FUNC27(wctx, ret);
        }

        FUNC33(wctx);
        FUNC30(&wctx);
    }

end:
    FUNC4(&print_format);
    FUNC4(&read_intervals);
    FUNC6(&hash);

    FUNC29();
    for (i = 0; i < FUNC1(sections); i++)
        FUNC3(&(sections[i].entries_to_show));

    FUNC14();

    return ret < 0;
}