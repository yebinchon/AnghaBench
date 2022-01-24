#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  list_audio; scalar_t__ indepth_scan; } ;
typedef  TYPE_8__ hb_job_t ;
struct TYPE_21__ {int codec; int track; int samplerate; int mixdown; float compression_level; float quality; int bitrate; scalar_t__ dither_method; int /*<<< orphan*/  samples_per_frame; } ;
struct TYPE_19__ {int codec; int samplerate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  samples_per_frame; } ;
struct TYPE_18__ {int /*<<< orphan*/  simple; } ;
struct TYPE_20__ {TYPE_7__ out; TYPE_5__ in; TYPE_4__ lang; } ;
struct TYPE_15__ {int /*<<< orphan*/  language; } ;
struct TYPE_16__ {TYPE_1__ vorbis; } ;
struct TYPE_17__ {TYPE_2__ config; } ;
struct TYPE_23__ {TYPE_6__ config; TYPE_3__ priv; } ;
typedef  TYPE_9__ hb_audio_t ;

/* Variables and functions */
 int HB_ACODEC_AUTO_PASS ; 
 int HB_ACODEC_PASS_FLAG ; 
 int HB_ACODEC_PASS_MASK ; 
 int HB_ACODEC_VORBIS ; 
 int HB_AMIXDOWN_NONE ; 
 float HB_INVALID_AUDIO_QUALITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*) ; 
 int FUNC1 (int,int,int,int) ; 
 int FUNC2 (int,int,int) ; 
 float FUNC3 (int,float) ; 
 float FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 float FUNC8 (int,float) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_8__*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,...) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(hb_job_t *job)
{
    int          i;
    hb_audio_t * audio;

    if (job->indepth_scan)
    {
        // Audio is not processed during subtitle scan
        return 0;
    }

    // apply Auto Passthru settings
    FUNC11(job);

    for (i = 0; i < FUNC12(job->list_audio);)
    {
        audio = FUNC13(job->list_audio, i);
        if (audio->config.out.codec == HB_ACODEC_AUTO_PASS)
        {
            // Auto Passthru should have been handled above
            // remove track to avoid a crash
            FUNC15("Auto Passthru error, dropping track %d",
                   audio->config.out.track);
            FUNC14(job->list_audio, audio);
            FUNC0(audio);
            continue;
        }
        if ((audio->config.out.codec & HB_ACODEC_PASS_FLAG) &&
            !(audio->config.in.codec &
              audio->config.out.codec & HB_ACODEC_PASS_MASK))
        {
            FUNC15("Passthru requested and input codec is not the same as output codec for track %d, dropping track",
                   audio->config.out.track);
            FUNC14(job->list_audio, audio);
            FUNC0(audio);
            continue;
        }
        /* Adjust output track number, in case we removed one.
         * Output tracks sadly still need to be in sequential order.
         * Note: out.track starts at 1, i starts at 0 */
        audio->config.out.track = ++i;
    }

    int best_mixdown    = 0;
    int best_bitrate    = 0;
    int best_samplerate = 0;

    for (i = 0; i < FUNC12(job->list_audio); i++)
    {
        audio = FUNC13(job->list_audio, i);

        /* Passthru audio */
        if (audio->config.out.codec & HB_ACODEC_PASS_FLAG)
        {
            // Muxer needs these to be set correctly in order to
            // set audio track MP4 time base.
            audio->config.out.samples_per_frame =
                                    audio->config.in.samples_per_frame;
            audio->config.out.samplerate = audio->config.in.samplerate;
            continue;
        }

        /* Vorbis language information */
        if (audio->config.out.codec == HB_ACODEC_VORBIS)
            audio->priv.config.vorbis.language = audio->config.lang.simple;

        /* sense-check the requested samplerate */
        if (audio->config.out.samplerate <= 0)
        {
            // if not specified, set to same as input
            audio->config.out.samplerate = audio->config.in.samplerate;
        }
        best_samplerate =
            FUNC9(audio->config.out.samplerate,
                                             audio->config.out.codec);
        if (best_samplerate != audio->config.out.samplerate)
        {
            FUNC15("work: sanitizing track %d unsupported samplerate %d Hz to %s kHz",
                   audio->config.out.track, audio->config.out.samplerate,
                   FUNC10(best_samplerate));
            audio->config.out.samplerate = best_samplerate;
        }

        /* sense-check the requested mixdown */
        if (audio->config.out.mixdown <= HB_AMIXDOWN_NONE)
        {
            /* Mixdown not specified, set the default mixdown */
            audio->config.out.mixdown =
                FUNC17(audio->config.out.codec,
                                       audio->config.in.channel_layout);
            FUNC15("work: mixdown not specified, track %d setting mixdown %s",
                   audio->config.out.track,
                   FUNC18(audio->config.out.mixdown));
        }
        else
        {
            best_mixdown =
                FUNC16(audio->config.out.codec,
                                    audio->config.in.channel_layout,
                                    audio->config.out.mixdown);
            if (audio->config.out.mixdown != best_mixdown)
            {
                /* log the output mixdown */
                FUNC15("work: sanitizing track %d mixdown %s to %s",
                       audio->config.out.track,
                       FUNC18(audio->config.out.mixdown),
                       FUNC18(best_mixdown));
                audio->config.out.mixdown = best_mixdown;
            }
        }

        /* sense-check the requested compression level */
        if (audio->config.out.compression_level < 0)
        {
            audio->config.out.compression_level =
                FUNC4(audio->config.out.codec);
            if (audio->config.out.compression_level >= 0)
            {
                FUNC15("work: compression level not specified, track %d setting compression level %.2f",
                       audio->config.out.track,
                       audio->config.out.compression_level);
            }
        }
        else
        {
            float best_compression =
                FUNC3(audio->config.out.codec,
                                              audio->config.out.compression_level);
            if (best_compression != audio->config.out.compression_level)
            {
                if (best_compression == -1)
                {
                    FUNC15("work: track %d, compression level not supported by codec",
                           audio->config.out.track);
                }
                else
                {
                    FUNC15("work: sanitizing track %d compression level %.2f to %.2f",
                           audio->config.out.track,
                           audio->config.out.compression_level,
                           best_compression);
                }
                audio->config.out.compression_level = best_compression;
            }
        }

        /* sense-check the requested quality */
        if (audio->config.out.quality != HB_INVALID_AUDIO_QUALITY)
        {
            float best_quality =
                FUNC8(audio->config.out.codec,
                                          audio->config.out.quality);
            if (best_quality != audio->config.out.quality)
            {
                if (best_quality == HB_INVALID_AUDIO_QUALITY)
                {
                    FUNC15("work: track %d, quality mode not supported by codec",
                           audio->config.out.track);
                }
                else
                {
                    FUNC15("work: sanitizing track %d quality %.2f to %.2f",
                           audio->config.out.track,
                           audio->config.out.quality, best_quality);
                }
                audio->config.out.quality = best_quality;
            }
        }

        /* sense-check the requested bitrate */
        if (audio->config.out.quality == HB_INVALID_AUDIO_QUALITY)
        {
            if (audio->config.out.bitrate <= 0)
            {
                /* Bitrate not specified, set the default bitrate */
                audio->config.out.bitrate =
                    FUNC2(audio->config.out.codec,
                                                 audio->config.out.samplerate,
                                                 audio->config.out.mixdown);
                if (audio->config.out.bitrate > 0)
                {
                    FUNC15("work: bitrate not specified, track %d setting bitrate %d Kbps",
                           audio->config.out.track,
                           audio->config.out.bitrate);
                }
            }
            else
            {
                best_bitrate =
                    FUNC1(audio->config.out.codec,
                                              audio->config.out.bitrate,
                                              audio->config.out.samplerate,
                                              audio->config.out.mixdown);
                if (best_bitrate > 0 &&
                    best_bitrate != audio->config.out.bitrate)
                {
                    /* log the output bitrate */
                    FUNC15("work: sanitizing track %d bitrate %d to %d Kbps",
                           audio->config.out.track,
                           audio->config.out.bitrate, best_bitrate);
                }
                audio->config.out.bitrate = best_bitrate;
            }
        }

        /* sense-check the requested dither */
        if (FUNC7(audio->config.out.codec))
        {
            if (audio->config.out.dither_method ==
                FUNC5())
            {
                /* "auto", enable with default settings */
                audio->config.out.dither_method =
                    FUNC6();
            }
        }
        else if (audio->config.out.dither_method !=
                 FUNC5())
        {
            /* specific dither requested but dithering not supported */
            FUNC15("work: track %d, dithering not supported by codec",
                   audio->config.out.track);
        }
    }
    return 0;
}