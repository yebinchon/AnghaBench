#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_14__ {long long den; long long num; } ;
struct TYPE_17__ {TYPE_3__ time_base; TYPE_2__* codecpar; } ;
struct TYPE_16__ {int mux_preload; TYPE_4__* g; } ;
struct TYPE_15__ {int /*<<< orphan*/  format_opts; int /*<<< orphan*/  codec_opts; } ;
struct TYPE_13__ {scalar_t__ codec_type; } ;
struct TYPE_12__ {TYPE_6__** streams; } ;
struct TYPE_11__ {int nb_streams; TYPE_1__* ctx; } ;
typedef  TYPE_5__ OptionsContext ;
typedef  TYPE_6__ AVStream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_DICT_DONT_OVERWRITE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  codec_opts ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  format_opts ; 
 TYPE_10__** input_files ; 
 int nb_input_files ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC10(void *optctx, const char *opt, const char *arg)
{
    OptionsContext *o = optctx;
    enum { PAL, NTSC, FILM, UNKNOWN } norm = UNKNOWN;
    static const char *const frame_rates[] = { "25", "30000/1001", "24000/1001" };

    if (!FUNC9(arg, "pal-", 4)) {
        norm = PAL;
        arg += 4;
    } else if (!FUNC9(arg, "ntsc-", 5)) {
        norm = NTSC;
        arg += 5;
    } else if (!FUNC9(arg, "film-", 5)) {
        norm = FILM;
        arg += 5;
    } else {
        /* Try to determine PAL/NTSC by peeking in the input files */
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
            FUNC2(NULL, AV_LOG_INFO, "Assuming %s for target.\n", norm == PAL ? "PAL" : "NTSC");
    }

    if (norm == UNKNOWN) {
        FUNC2(NULL, AV_LOG_FATAL, "Could not determine norm (PAL/NTSC/NTSC-Film) for target.\n");
        FUNC2(NULL, AV_LOG_FATAL, "Please prefix target with \"pal-\", \"ntsc-\" or \"film-\",\n");
        FUNC2(NULL, AV_LOG_FATAL, "or set a framerate with \"-r xxx\".\n");
        FUNC3(1);
    }

    if (!FUNC8(arg, "vcd")) {
        FUNC6(o, "c:v", "mpeg1video");
        FUNC4(o, "c:a", "mp2");
        FUNC7(o, "f", "vcd", options);

        FUNC7(o, "s", norm == PAL ? "352x288" : "352x240", options);
        FUNC7(o, "r", frame_rates[norm], options);
        FUNC5(NULL, "g", norm == PAL ? "15" : "18");

        FUNC5(NULL, "b:v", "1150000");
        FUNC5(NULL, "maxrate:v", "1150000");
        FUNC5(NULL, "minrate:v", "1150000");
        FUNC5(NULL, "bufsize:v", "327680"); // 40*1024*8;

        FUNC5(NULL, "b:a", "224000");
        FUNC7(o, "ar", "44100", options);
        FUNC7(o, "ac", "2", options);

        FUNC5(NULL, "packetsize", "2324");
        FUNC5(NULL, "muxrate", "1411200"); // 2352 * 75 * 8;

        /* We have to offset the PTS, so that it is consistent with the SCR.
           SCR starts at 36000, but the first two packs contain only padding
           and the first pack from the other stream, respectively, may also have
           been written before.
           So the real data starts at SCR 36000+3*1200. */
        o->mux_preload = (36000 + 3 * 1200) / 90000.0; // 0.44
    } else if (!FUNC8(arg, "svcd")) {

        FUNC6(o, "c:v", "mpeg2video");
        FUNC4(o, "c:a", "mp2");
        FUNC7(o, "f", "svcd", options);

        FUNC7(o, "s", norm == PAL ? "480x576" : "480x480", options);
        FUNC7(o, "r", frame_rates[norm], options);
        FUNC7(o, "pix_fmt", "yuv420p", options);
        FUNC5(NULL, "g", norm == PAL ? "15" : "18");

        FUNC5(NULL, "b:v", "2040000");
        FUNC5(NULL, "maxrate:v", "2516000");
        FUNC5(NULL, "minrate:v", "0"); // 1145000;
        FUNC5(NULL, "bufsize:v", "1835008"); // 224*1024*8;
        FUNC5(NULL, "scan_offset", "1");

        FUNC5(NULL, "b:a", "224000");
        FUNC7(o, "ar", "44100", options);

        FUNC5(NULL, "packetsize", "2324");

    } else if (!FUNC8(arg, "dvd")) {

        FUNC6(o, "c:v", "mpeg2video");
        FUNC4(o, "c:a", "ac3");
        FUNC7(o, "f", "dvd", options);

        FUNC7(o, "s", norm == PAL ? "720x576" : "720x480", options);
        FUNC7(o, "r", frame_rates[norm], options);
        FUNC7(o, "pix_fmt", "yuv420p", options);
        FUNC5(NULL, "g", norm == PAL ? "15" : "18");

        FUNC5(NULL, "b:v", "6000000");
        FUNC5(NULL, "maxrate:v", "9000000");
        FUNC5(NULL, "minrate:v", "0"); // 1500000;
        FUNC5(NULL, "bufsize:v", "1835008"); // 224*1024*8;

        FUNC5(NULL, "packetsize", "2048");  // from www.mpucoder.com: DVD sectors contain 2048 bytes of data, this is also the size of one pack.
        FUNC5(NULL, "muxrate", "10080000"); // from mplex project: data_rate = 1260000. mux_rate = data_rate * 8

        FUNC5(NULL, "b:a", "448000");
        FUNC7(o, "ar", "48000", options);

    } else if (!FUNC9(arg, "dv", 2)) {

        FUNC7(o, "f", "dv", options);

        FUNC7(o, "s", norm == PAL ? "720x576" : "720x480", options);
        FUNC7(o, "pix_fmt", !FUNC9(arg, "dv50", 4) ? "yuv422p" :
                          norm == PAL ? "yuv420p" : "yuv411p", options);
        FUNC7(o, "r", frame_rates[norm], options);

        FUNC7(o, "ar", "48000", options);
        FUNC7(o, "ac", "2", options);

    } else {
        FUNC2(NULL, AV_LOG_ERROR, "Unknown target: %s\n", arg);
        return FUNC0(EINVAL);
    }

    FUNC1(&o->g->codec_opts,  codec_opts, AV_DICT_DONT_OVERWRITE);
    FUNC1(&o->g->format_opts, format_opts, AV_DICT_DONT_OVERWRITE);

    return 0;
}