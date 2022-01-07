
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int int64_t ;
struct TYPE_14__ {long long den; long long num; } ;
struct TYPE_17__ {TYPE_3__ time_base; TYPE_2__* codecpar; } ;
struct TYPE_16__ {int mux_preload; TYPE_4__* g; } ;
struct TYPE_15__ {int format_opts; int codec_opts; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
struct TYPE_12__ {TYPE_6__** streams; } ;
struct TYPE_11__ {int nb_streams; TYPE_1__* ctx; } ;
typedef TYPE_5__ OptionsContext ;
typedef TYPE_6__ AVStream ;


 int AVERROR (int ) ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_DICT_DONT_OVERWRITE ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int EINVAL ;
 int av_dict_copy (int *,int ,int ) ;
 int av_log (int *,int ,char*,...) ;
 int codec_opts ;
 int exit_program (int) ;
 int format_opts ;
 TYPE_10__** input_files ;
 int nb_input_files ;
 int opt_audio_codec (TYPE_5__*,char*,char*) ;
 int opt_default (int *,char*,char*) ;
 int opt_video_codec (TYPE_5__*,char*,char*) ;
 int options ;
 int parse_option (TYPE_5__*,char*,char const* const,int ) ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int opt_target(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    enum { PAL, NTSC, FILM, UNKNOWN } norm = UNKNOWN;
    static const char *const frame_rates[] = { "25", "30000/1001", "24000/1001" };

    if (!strncmp(arg, "pal-", 4)) {
        norm = PAL;
        arg += 4;
    } else if (!strncmp(arg, "ntsc-", 5)) {
        norm = NTSC;
        arg += 5;
    } else if (!strncmp(arg, "film-", 5)) {
        norm = FILM;
        arg += 5;
    } else {

        if (nb_input_files) {
            int i, j;
            for (j = 0; j < nb_input_files; j++) {
                for (i = 0; i < input_files[j]->nb_streams; i++) {
                    AVStream *st = input_files[j]->ctx->streams[i];
                    int64_t fr;
                    if (st->codecpar->codec_type != AVMEDIA_TYPE_VIDEO)
                        continue;
                    fr = st->time_base.den * 1000LL / st->time_base.num;
                    if (fr == 25000) {
                        norm = PAL;
                        break;
                    } else if ((fr == 29970) || (fr == 23976)) {
                        norm = NTSC;
                        break;
                    }
                }
                if (norm != UNKNOWN)
                    break;
            }
        }
        if (norm != UNKNOWN)
            av_log(((void*)0), AV_LOG_INFO, "Assuming %s for target.\n", norm == PAL ? "PAL" : "NTSC");
    }

    if (norm == UNKNOWN) {
        av_log(((void*)0), AV_LOG_FATAL, "Could not determine norm (PAL/NTSC/NTSC-Film) for target.\n");
        av_log(((void*)0), AV_LOG_FATAL, "Please prefix target with \"pal-\", \"ntsc-\" or \"film-\",\n");
        av_log(((void*)0), AV_LOG_FATAL, "or set a framerate with \"-r xxx\".\n");
        exit_program(1);
    }

    if (!strcmp(arg, "vcd")) {
        opt_video_codec(o, "c:v", "mpeg1video");
        opt_audio_codec(o, "c:a", "mp2");
        parse_option(o, "f", "vcd", options);

        parse_option(o, "s", norm == PAL ? "352x288" : "352x240", options);
        parse_option(o, "r", frame_rates[norm], options);
        opt_default(((void*)0), "g", norm == PAL ? "15" : "18");

        opt_default(((void*)0), "b:v", "1150000");
        opt_default(((void*)0), "maxrate:v", "1150000");
        opt_default(((void*)0), "minrate:v", "1150000");
        opt_default(((void*)0), "bufsize:v", "327680");

        opt_default(((void*)0), "b:a", "224000");
        parse_option(o, "ar", "44100", options);
        parse_option(o, "ac", "2", options);

        opt_default(((void*)0), "packetsize", "2324");
        opt_default(((void*)0), "muxrate", "1411200");






        o->mux_preload = (36000 + 3 * 1200) / 90000.0;
    } else if (!strcmp(arg, "svcd")) {

        opt_video_codec(o, "c:v", "mpeg2video");
        opt_audio_codec(o, "c:a", "mp2");
        parse_option(o, "f", "svcd", options);

        parse_option(o, "s", norm == PAL ? "480x576" : "480x480", options);
        parse_option(o, "r", frame_rates[norm], options);
        parse_option(o, "pix_fmt", "yuv420p", options);
        opt_default(((void*)0), "g", norm == PAL ? "15" : "18");

        opt_default(((void*)0), "b:v", "2040000");
        opt_default(((void*)0), "maxrate:v", "2516000");
        opt_default(((void*)0), "minrate:v", "0");
        opt_default(((void*)0), "bufsize:v", "1835008");
        opt_default(((void*)0), "scan_offset", "1");

        opt_default(((void*)0), "b:a", "224000");
        parse_option(o, "ar", "44100", options);

        opt_default(((void*)0), "packetsize", "2324");

    } else if (!strcmp(arg, "dvd")) {

        opt_video_codec(o, "c:v", "mpeg2video");
        opt_audio_codec(o, "c:a", "ac3");
        parse_option(o, "f", "dvd", options);

        parse_option(o, "s", norm == PAL ? "720x576" : "720x480", options);
        parse_option(o, "r", frame_rates[norm], options);
        parse_option(o, "pix_fmt", "yuv420p", options);
        opt_default(((void*)0), "g", norm == PAL ? "15" : "18");

        opt_default(((void*)0), "b:v", "6000000");
        opt_default(((void*)0), "maxrate:v", "9000000");
        opt_default(((void*)0), "minrate:v", "0");
        opt_default(((void*)0), "bufsize:v", "1835008");

        opt_default(((void*)0), "packetsize", "2048");
        opt_default(((void*)0), "muxrate", "10080000");

        opt_default(((void*)0), "b:a", "448000");
        parse_option(o, "ar", "48000", options);

    } else if (!strncmp(arg, "dv", 2)) {

        parse_option(o, "f", "dv", options);

        parse_option(o, "s", norm == PAL ? "720x576" : "720x480", options);
        parse_option(o, "pix_fmt", !strncmp(arg, "dv50", 4) ? "yuv422p" :
                          norm == PAL ? "yuv420p" : "yuv411p", options);
        parse_option(o, "r", frame_rates[norm], options);

        parse_option(o, "ar", "48000", options);
        parse_option(o, "ac", "2", options);

    } else {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown target: %s\n", arg);
        return AVERROR(EINVAL);
    }

    av_dict_copy(&o->g->codec_opts, codec_opts, AV_DICT_DONT_OVERWRITE);
    av_dict_copy(&o->g->format_opts, format_opts, AV_DICT_DONT_OVERWRITE);

    return 0;
}
