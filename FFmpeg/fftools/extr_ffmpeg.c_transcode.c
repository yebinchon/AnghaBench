
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_16__ {int eof_reached; } ;
struct TYPE_15__ {int header_written; TYPE_4__* ctx; } ;
struct TYPE_14__ {int url; } ;
struct TYPE_13__ {size_t file_index; int dec_ctx; int (* hwaccel_uninit ) (int ) ;scalar_t__ decoding_needed; } ;
struct TYPE_12__ {int resample_opts; int swr_opts; int sws_dict; int encoder_opts; int disposition; int apad; int forced_kf_pts; int * logfile; scalar_t__ packets_written; TYPE_1__* enc_ctx; scalar_t__ encoding_needed; } ;
struct TYPE_11__ {int stats_in; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ InputStream ;
typedef TYPE_4__ AVFormatContext ;


 int ABORT_ON_FLAG_EMPTY_OUTPUT ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_VERBOSE ;
 int abort_on_flags ;
 int av_buffer_unref (int *) ;
 int av_dict_free (int *) ;
 int av_err2str (int) ;
 int av_freep (int *) ;
 scalar_t__ av_gettime_relative () ;
 int av_log (int *,int ,char*,...) ;
 int av_write_trailer (TYPE_4__*) ;
 int avcodec_close (int ) ;
 scalar_t__ check_keyboard_interaction (scalar_t__) ;
 int errno ;
 scalar_t__ exit_on_error ;
 int exit_program (int) ;
 scalar_t__ fclose (int *) ;
 int flush_encoders () ;
 int free_input_threads () ;
 int hw_device_ctx ;
 int hw_device_free_all () ;
 int init_input_threads () ;
 TYPE_9__** input_files ;
 TYPE_3__** input_streams ;
 int nb_input_streams ;
 int nb_output_files ;
 int nb_output_streams ;
 int need_output () ;
 TYPE_7__** output_files ;
 TYPE_2__** output_streams ;
 int print_report (int,scalar_t__,scalar_t__) ;
 int process_input_packet (TYPE_3__*,int *,int ) ;
 int received_sigterm ;
 scalar_t__ stdin_interaction ;
 int stub1 (int ) ;
 int term_exit () ;
 int transcode_init () ;
 int transcode_step () ;

__attribute__((used)) static int transcode(void)
{
    int ret, i;
    AVFormatContext *os;
    OutputStream *ost;
    InputStream *ist;
    int64_t timer_start;
    int64_t total_packets_written = 0;

    ret = transcode_init();
    if (ret < 0)
        goto fail;

    if (stdin_interaction) {
        av_log(((void*)0), AV_LOG_INFO, "Press [q] to stop, [?] for help\n");
    }

    timer_start = av_gettime_relative();






    while (!received_sigterm) {
        int64_t cur_time= av_gettime_relative();


        if (stdin_interaction)
            if (check_keyboard_interaction(cur_time) < 0)
                break;


        if (!need_output()) {
            av_log(((void*)0), AV_LOG_VERBOSE, "No more output streams to write to, finishing.\n");
            break;
        }

        ret = transcode_step();
        if (ret < 0 && ret != AVERROR_EOF) {
            av_log(((void*)0), AV_LOG_ERROR, "Error while filtering: %s\n", av_err2str(ret));
            break;
        }


        print_report(0, timer_start, cur_time);
    }





    for (i = 0; i < nb_input_streams; i++) {
        ist = input_streams[i];
        if (!input_files[ist->file_index]->eof_reached) {
            process_input_packet(ist, ((void*)0), 0);
        }
    }
    flush_encoders();

    term_exit();


    for (i = 0; i < nb_output_files; i++) {
        os = output_files[i]->ctx;
        if (!output_files[i]->header_written) {
            av_log(((void*)0), AV_LOG_ERROR,
                   "Nothing was written into output file %d (%s), because "
                   "at least one of its streams received no packets.\n",
                   i, os->url);
            continue;
        }
        if ((ret = av_write_trailer(os)) < 0) {
            av_log(((void*)0), AV_LOG_ERROR, "Error writing trailer of %s: %s\n", os->url, av_err2str(ret));
            if (exit_on_error)
                exit_program(1);
        }
    }


    print_report(1, timer_start, av_gettime_relative());


    for (i = 0; i < nb_output_streams; i++) {
        ost = output_streams[i];
        if (ost->encoding_needed) {
            av_freep(&ost->enc_ctx->stats_in);
        }
        total_packets_written += ost->packets_written;
    }

    if (!total_packets_written && (abort_on_flags & ABORT_ON_FLAG_EMPTY_OUTPUT)) {
        av_log(((void*)0), AV_LOG_FATAL, "Empty output\n");
        exit_program(1);
    }


    for (i = 0; i < nb_input_streams; i++) {
        ist = input_streams[i];
        if (ist->decoding_needed) {
            avcodec_close(ist->dec_ctx);
            if (ist->hwaccel_uninit)
                ist->hwaccel_uninit(ist->dec_ctx);
        }
    }

    av_buffer_unref(&hw_device_ctx);
    hw_device_free_all();


    ret = 0;

 fail:




    if (output_streams) {
        for (i = 0; i < nb_output_streams; i++) {
            ost = output_streams[i];
            if (ost) {
                if (ost->logfile) {
                    if (fclose(ost->logfile))
                        av_log(((void*)0), AV_LOG_ERROR,
                               "Error closing logfile, loss of information possible: %s\n",
                               av_err2str(AVERROR(errno)));
                    ost->logfile = ((void*)0);
                }
                av_freep(&ost->forced_kf_pts);
                av_freep(&ost->apad);
                av_freep(&ost->disposition);
                av_dict_free(&ost->encoder_opts);
                av_dict_free(&ost->sws_dict);
                av_dict_free(&ost->swr_opts);
                av_dict_free(&ost->resample_opts);
            }
        }
    }
    return ret;
}
