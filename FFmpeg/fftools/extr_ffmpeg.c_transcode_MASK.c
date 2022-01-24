#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_16__ {int /*<<< orphan*/  eof_reached; } ;
struct TYPE_15__ {int /*<<< orphan*/  header_written; TYPE_4__* ctx; } ;
struct TYPE_14__ {int /*<<< orphan*/  url; } ;
struct TYPE_13__ {size_t file_index; int /*<<< orphan*/  dec_ctx; int /*<<< orphan*/  (* hwaccel_uninit ) (int /*<<< orphan*/ ) ;scalar_t__ decoding_needed; } ;
struct TYPE_12__ {int /*<<< orphan*/  resample_opts; int /*<<< orphan*/  swr_opts; int /*<<< orphan*/  sws_dict; int /*<<< orphan*/  encoder_opts; int /*<<< orphan*/  disposition; int /*<<< orphan*/  apad; int /*<<< orphan*/  forced_kf_pts; int /*<<< orphan*/ * logfile; scalar_t__ packets_written; TYPE_1__* enc_ctx; scalar_t__ encoding_needed; } ;
struct TYPE_11__ {int /*<<< orphan*/  stats_in; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ InputStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int ABORT_ON_FLAG_EMPTY_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int abort_on_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ exit_on_error ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  hw_device_ctx ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 TYPE_9__** input_files ; 
 TYPE_3__** input_streams ; 
 int nb_input_streams ; 
 int nb_output_files ; 
 int nb_output_streams ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_7__** output_files ; 
 TYPE_2__** output_streams ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  received_sigterm ; 
 scalar_t__ stdin_interaction ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int FUNC21 () ; 
 int FUNC22 () ; 

__attribute__((used)) static int FUNC23(void)
{
    int ret, i;
    AVFormatContext *os;
    OutputStream *ost;
    InputStream *ist;
    int64_t timer_start;
    int64_t total_packets_written = 0;

    ret = FUNC21();
    if (ret < 0)
        goto fail;

    if (stdin_interaction) {
        FUNC6(NULL, AV_LOG_INFO, "Press [q] to stop, [?] for help\n");
    }

    timer_start = FUNC5();

#if HAVE_THREADS
    if ((ret = init_input_threads()) < 0)
        goto fail;
#endif

    while (!received_sigterm) {
        int64_t cur_time= FUNC5();

        /* if 'q' pressed, exits */
        if (stdin_interaction)
            if (FUNC9(cur_time) < 0)
                break;

        /* check if there's any stream where output is still needed */
        if (!FUNC16()) {
            FUNC6(NULL, AV_LOG_VERBOSE, "No more output streams to write to, finishing.\n");
            break;
        }

        ret = FUNC22();
        if (ret < 0 && ret != AVERROR_EOF) {
            FUNC6(NULL, AV_LOG_ERROR, "Error while filtering: %s\n", FUNC3(ret));
            break;
        }

        /* dump report by using the output first video and audio streams */
        FUNC17(0, timer_start, cur_time);
    }
#if HAVE_THREADS
    free_input_threads();
#endif

    /* at the end of stream, we must flush the decoder buffers */
    for (i = 0; i < nb_input_streams; i++) {
        ist = input_streams[i];
        if (!input_files[ist->file_index]->eof_reached) {
            FUNC18(ist, NULL, 0);
        }
    }
    FUNC12();

    FUNC20();

    /* write the trailer if needed and close file */
    for (i = 0; i < nb_output_files; i++) {
        os = output_files[i]->ctx;
        if (!output_files[i]->header_written) {
            FUNC6(NULL, AV_LOG_ERROR,
                   "Nothing was written into output file %d (%s), because "
                   "at least one of its streams received no packets.\n",
                   i, os->url);
            continue;
        }
        if ((ret = FUNC7(os)) < 0) {
            FUNC6(NULL, AV_LOG_ERROR, "Error writing trailer of %s: %s\n", os->url, FUNC3(ret));
            if (exit_on_error)
                FUNC10(1);
        }
    }

    /* dump report by using the first video and audio streams */
    FUNC17(1, timer_start, FUNC5());

    /* close each encoder */
    for (i = 0; i < nb_output_streams; i++) {
        ost = output_streams[i];
        if (ost->encoding_needed) {
            FUNC4(&ost->enc_ctx->stats_in);
        }
        total_packets_written += ost->packets_written;
    }

    if (!total_packets_written && (abort_on_flags & ABORT_ON_FLAG_EMPTY_OUTPUT)) {
        FUNC6(NULL, AV_LOG_FATAL, "Empty output\n");
        FUNC10(1);
    }

    /* close each decoder */
    for (i = 0; i < nb_input_streams; i++) {
        ist = input_streams[i];
        if (ist->decoding_needed) {
            FUNC8(ist->dec_ctx);
            if (ist->hwaccel_uninit)
                ist->hwaccel_uninit(ist->dec_ctx);
        }
    }

    FUNC1(&hw_device_ctx);
    FUNC14();

    /* finished ! */
    ret = 0;

 fail:
#if HAVE_THREADS
    free_input_threads();
#endif

    if (output_streams) {
        for (i = 0; i < nb_output_streams; i++) {
            ost = output_streams[i];
            if (ost) {
                if (ost->logfile) {
                    if (FUNC11(ost->logfile))
                        FUNC6(NULL, AV_LOG_ERROR,
                               "Error closing logfile, loss of information possible: %s\n",
                               FUNC3(FUNC0(errno)));
                    ost->logfile = NULL;
                }
                FUNC4(&ost->forced_kf_pts);
                FUNC4(&ost->apad);
                FUNC4(&ost->disposition);
                FUNC2(&ost->encoder_opts);
                FUNC2(&ost->sws_dict);
                FUNC2(&ost->swr_opts);
                FUNC2(&ost->resample_opts);
            }
        }
    }
    return ret;
}