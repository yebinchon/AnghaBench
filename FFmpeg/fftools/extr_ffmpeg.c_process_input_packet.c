
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_24__ ;
typedef struct TYPE_29__ TYPE_23__ ;
typedef struct TYPE_28__ TYPE_22__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_34__ {scalar_t__ pts; scalar_t__ dts; int duration; scalar_t__ size; int * data; } ;
struct TYPE_30__ {int num; } ;
struct TYPE_33__ {int saw_first_ts; int dts; void* pts; scalar_t__ next_dts; scalar_t__ next_pts; int got_output; TYPE_2__* dec_ctx; TYPE_22__* st; TYPE_24__ framerate; scalar_t__ decoding_needed; int file_index; } ;
struct TYPE_32__ {scalar_t__ encoding_needed; } ;
struct TYPE_26__ {int num; int den; } ;
struct TYPE_31__ {int has_b_frames; int codec_type; int ticks_per_frame; int sample_rate; int frame_size; TYPE_1__ framerate; } ;
struct TYPE_29__ {scalar_t__ num; } ;
struct TYPE_28__ {int time_base; int index; TYPE_23__ avg_frame_rate; } ;
struct TYPE_27__ {int repeat_pict; } ;
typedef TYPE_3__ OutputStream ;
typedef TYPE_4__ InputStream ;
typedef int AVRational ;
typedef TYPE_5__ AVPacket ;


 int AVERROR_EOF ;



 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE ;
 int AV_TIME_BASE_Q ;
 int av_assert1 (int) ;
 int av_err2str (int) ;
 int av_init_packet (TYPE_5__*) ;
 int av_inv_q (TYPE_24__) ;
 int av_log (int *,int ,char*,...) ;
 int av_q2d (TYPE_23__) ;
 void* av_rescale_q (int,int ,int ) ;
 TYPE_21__* av_stream_get_parser (TYPE_22__*) ;
 int check_output_constraints (TYPE_4__*,TYPE_3__*) ;
 int decode_audio (TYPE_4__*,TYPE_5__*,int*,int*) ;
 int decode_video (TYPE_4__*,TYPE_5__*,int*,int*,int,int*) ;
 int do_streamcopy (TYPE_4__*,TYPE_3__*,TYPE_5__ const*) ;
 scalar_t__ exit_on_error ;
 int exit_program (int) ;
 int nb_output_streams ;
 TYPE_3__** output_streams ;
 int send_filter_eof (TYPE_4__*) ;
 int transcode_subtitles (TYPE_4__*,TYPE_5__*,int*,int*) ;

__attribute__((used)) static int process_input_packet(InputStream *ist, const AVPacket *pkt, int no_eof)
{
    int ret = 0, i;
    int repeating = 0;
    int eof_reached = 0;

    AVPacket avpkt;
    if (!ist->saw_first_ts) {
        ist->dts = ist->st->avg_frame_rate.num ? - ist->dec_ctx->has_b_frames * AV_TIME_BASE / av_q2d(ist->st->avg_frame_rate) : 0;
        ist->pts = 0;
        if (pkt && pkt->pts != AV_NOPTS_VALUE && !ist->decoding_needed) {
            ist->dts += av_rescale_q(pkt->pts, ist->st->time_base, AV_TIME_BASE_Q);
            ist->pts = ist->dts;
        }
        ist->saw_first_ts = 1;
    }

    if (ist->next_dts == AV_NOPTS_VALUE)
        ist->next_dts = ist->dts;
    if (ist->next_pts == AV_NOPTS_VALUE)
        ist->next_pts = ist->pts;

    if (!pkt) {

        av_init_packet(&avpkt);
        avpkt.data = ((void*)0);
        avpkt.size = 0;
    } else {
        avpkt = *pkt;
    }

    if (pkt && pkt->dts != AV_NOPTS_VALUE) {
        ist->next_dts = ist->dts = av_rescale_q(pkt->dts, ist->st->time_base, AV_TIME_BASE_Q);
        if (ist->dec_ctx->codec_type != 128 || !ist->decoding_needed)
            ist->next_pts = ist->pts = ist->dts;
    }


    while (ist->decoding_needed) {
        int64_t duration_dts = 0;
        int64_t duration_pts = 0;
        int got_output = 0;
        int decode_failed = 0;

        ist->pts = ist->next_pts;
        ist->dts = ist->next_dts;

        switch (ist->dec_ctx->codec_type) {
        case 130:
            ret = decode_audio (ist, repeating ? ((void*)0) : &avpkt, &got_output,
                                   &decode_failed);
            break;
        case 128:
            ret = decode_video (ist, repeating ? ((void*)0) : &avpkt, &got_output, &duration_pts, !pkt,
                                   &decode_failed);
            if (!repeating || !pkt || got_output) {
                if (pkt && pkt->duration) {
                    duration_dts = av_rescale_q(pkt->duration, ist->st->time_base, AV_TIME_BASE_Q);
                } else if(ist->dec_ctx->framerate.num != 0 && ist->dec_ctx->framerate.den != 0) {
                    int ticks= av_stream_get_parser(ist->st) ? av_stream_get_parser(ist->st)->repeat_pict+1 : ist->dec_ctx->ticks_per_frame;
                    duration_dts = ((int64_t)AV_TIME_BASE *
                                    ist->dec_ctx->framerate.den * ticks) /
                                    ist->dec_ctx->framerate.num / ist->dec_ctx->ticks_per_frame;
                }

                if(ist->dts != AV_NOPTS_VALUE && duration_dts) {
                    ist->next_dts += duration_dts;
                }else
                    ist->next_dts = AV_NOPTS_VALUE;
            }

            if (got_output) {
                if (duration_pts > 0) {
                    ist->next_pts += av_rescale_q(duration_pts, ist->st->time_base, AV_TIME_BASE_Q);
                } else {
                    ist->next_pts += duration_dts;
                }
            }
            break;
        case 129:
            if (repeating)
                break;
            ret = transcode_subtitles(ist, &avpkt, &got_output, &decode_failed);
            if (!pkt && ret >= 0)
                ret = AVERROR_EOF;
            break;
        default:
            return -1;
        }

        if (ret == AVERROR_EOF) {
            eof_reached = 1;
            break;
        }

        if (ret < 0) {
            if (decode_failed) {
                av_log(((void*)0), AV_LOG_ERROR, "Error while decoding stream #%d:%d: %s\n",
                       ist->file_index, ist->st->index, av_err2str(ret));
            } else {
                av_log(((void*)0), AV_LOG_FATAL, "Error while processing the decoded "
                       "data for stream #%d:%d\n", ist->file_index, ist->st->index);
            }
            if (!decode_failed || exit_on_error)
                exit_program(1);
            break;
        }

        if (got_output)
            ist->got_output = 1;

        if (!got_output)
            break;
        if (!pkt)
            break;

        repeating = 1;
    }



    if (!pkt && ist->decoding_needed && eof_reached && !no_eof) {
        int ret = send_filter_eof(ist);
        if (ret < 0) {
            av_log(((void*)0), AV_LOG_FATAL, "Error marking filters as finished\n");
            exit_program(1);
        }
    }


    if (!ist->decoding_needed && pkt) {
        ist->dts = ist->next_dts;
        switch (ist->dec_ctx->codec_type) {
        case 130:
            av_assert1(pkt->duration >= 0);
            if (ist->dec_ctx->sample_rate) {
                ist->next_dts += ((int64_t)AV_TIME_BASE * ist->dec_ctx->frame_size) /
                                  ist->dec_ctx->sample_rate;
            } else {
                ist->next_dts += av_rescale_q(pkt->duration, ist->st->time_base, AV_TIME_BASE_Q);
            }
            break;
        case 128:
            if (ist->framerate.num) {

                AVRational time_base_q = AV_TIME_BASE_Q;
                int64_t next_dts = av_rescale_q(ist->next_dts, time_base_q, av_inv_q(ist->framerate));
                ist->next_dts = av_rescale_q(next_dts + 1, av_inv_q(ist->framerate), time_base_q);
            } else if (pkt->duration) {
                ist->next_dts += av_rescale_q(pkt->duration, ist->st->time_base, AV_TIME_BASE_Q);
            } else if(ist->dec_ctx->framerate.num != 0) {
                int ticks= av_stream_get_parser(ist->st) ? av_stream_get_parser(ist->st)->repeat_pict + 1 : ist->dec_ctx->ticks_per_frame;
                ist->next_dts += ((int64_t)AV_TIME_BASE *
                                  ist->dec_ctx->framerate.den * ticks) /
                                  ist->dec_ctx->framerate.num / ist->dec_ctx->ticks_per_frame;
            }
            break;
        }
        ist->pts = ist->dts;
        ist->next_pts = ist->next_dts;
    }
    for (i = 0; i < nb_output_streams; i++) {
        OutputStream *ost = output_streams[i];

        if (!check_output_constraints(ist, ost) || ost->encoding_needed)
            continue;

        do_streamcopy(ist, ost, pkt);
    }

    return !eof_reached;
}
