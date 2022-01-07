
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_22__ {int list_audio; scalar_t__ indepth_scan; } ;
typedef TYPE_8__ hb_job_t ;
struct TYPE_21__ {int codec; int track; int samplerate; int mixdown; float compression_level; float quality; int bitrate; scalar_t__ dither_method; int samples_per_frame; } ;
struct TYPE_19__ {int codec; int samplerate; int channel_layout; int samples_per_frame; } ;
struct TYPE_18__ {int simple; } ;
struct TYPE_20__ {TYPE_7__ out; TYPE_5__ in; TYPE_4__ lang; } ;
struct TYPE_15__ {int language; } ;
struct TYPE_16__ {TYPE_1__ vorbis; } ;
struct TYPE_17__ {TYPE_2__ config; } ;
struct TYPE_23__ {TYPE_6__ config; TYPE_3__ priv; } ;
typedef TYPE_9__ hb_audio_t ;


 int HB_ACODEC_AUTO_PASS ;
 int HB_ACODEC_PASS_FLAG ;
 int HB_ACODEC_PASS_MASK ;
 int HB_ACODEC_VORBIS ;
 int HB_AMIXDOWN_NONE ;
 float HB_INVALID_AUDIO_QUALITY ;
 int free (TYPE_9__*) ;
 int hb_audio_bitrate_get_best (int,int,int,int) ;
 int hb_audio_bitrate_get_default (int,int,int) ;
 float hb_audio_compression_get_best (int,float) ;
 float hb_audio_compression_get_default (int) ;
 scalar_t__ hb_audio_dither_get_default () ;
 scalar_t__ hb_audio_dither_get_default_method () ;
 scalar_t__ hb_audio_dither_is_supported (int) ;
 float hb_audio_quality_get_best (int,float) ;
 int hb_audio_samplerate_find_closest (int,int) ;
 int hb_audio_samplerate_get_name (int) ;
 int hb_autopassthru_apply_settings (TYPE_8__*) ;
 int hb_list_count (int ) ;
 TYPE_9__* hb_list_item (int ,int) ;
 int hb_list_rem (int ,TYPE_9__*) ;
 int hb_log (char*,int,...) ;
 int hb_mixdown_get_best (int,int ,int) ;
 int hb_mixdown_get_default (int,int ) ;
 int hb_mixdown_get_name (int) ;

__attribute__((used)) static int sanitize_audio(hb_job_t *job)
{
    int i;
    hb_audio_t * audio;

    if (job->indepth_scan)
    {

        return 0;
    }


    hb_autopassthru_apply_settings(job);

    for (i = 0; i < hb_list_count(job->list_audio);)
    {
        audio = hb_list_item(job->list_audio, i);
        if (audio->config.out.codec == HB_ACODEC_AUTO_PASS)
        {


            hb_log("Auto Passthru error, dropping track %d",
                   audio->config.out.track);
            hb_list_rem(job->list_audio, audio);
            free(audio);
            continue;
        }
        if ((audio->config.out.codec & HB_ACODEC_PASS_FLAG) &&
            !(audio->config.in.codec &
              audio->config.out.codec & HB_ACODEC_PASS_MASK))
        {
            hb_log("Passthru requested and input codec is not the same as output codec for track %d, dropping track",
                   audio->config.out.track);
            hb_list_rem(job->list_audio, audio);
            free(audio);
            continue;
        }



        audio->config.out.track = ++i;
    }

    int best_mixdown = 0;
    int best_bitrate = 0;
    int best_samplerate = 0;

    for (i = 0; i < hb_list_count(job->list_audio); i++)
    {
        audio = hb_list_item(job->list_audio, i);


        if (audio->config.out.codec & HB_ACODEC_PASS_FLAG)
        {


            audio->config.out.samples_per_frame =
                                    audio->config.in.samples_per_frame;
            audio->config.out.samplerate = audio->config.in.samplerate;
            continue;
        }


        if (audio->config.out.codec == HB_ACODEC_VORBIS)
            audio->priv.config.vorbis.language = audio->config.lang.simple;


        if (audio->config.out.samplerate <= 0)
        {

            audio->config.out.samplerate = audio->config.in.samplerate;
        }
        best_samplerate =
            hb_audio_samplerate_find_closest(audio->config.out.samplerate,
                                             audio->config.out.codec);
        if (best_samplerate != audio->config.out.samplerate)
        {
            hb_log("work: sanitizing track %d unsupported samplerate %d Hz to %s kHz",
                   audio->config.out.track, audio->config.out.samplerate,
                   hb_audio_samplerate_get_name(best_samplerate));
            audio->config.out.samplerate = best_samplerate;
        }


        if (audio->config.out.mixdown <= HB_AMIXDOWN_NONE)
        {

            audio->config.out.mixdown =
                hb_mixdown_get_default(audio->config.out.codec,
                                       audio->config.in.channel_layout);
            hb_log("work: mixdown not specified, track %d setting mixdown %s",
                   audio->config.out.track,
                   hb_mixdown_get_name(audio->config.out.mixdown));
        }
        else
        {
            best_mixdown =
                hb_mixdown_get_best(audio->config.out.codec,
                                    audio->config.in.channel_layout,
                                    audio->config.out.mixdown);
            if (audio->config.out.mixdown != best_mixdown)
            {

                hb_log("work: sanitizing track %d mixdown %s to %s",
                       audio->config.out.track,
                       hb_mixdown_get_name(audio->config.out.mixdown),
                       hb_mixdown_get_name(best_mixdown));
                audio->config.out.mixdown = best_mixdown;
            }
        }


        if (audio->config.out.compression_level < 0)
        {
            audio->config.out.compression_level =
                hb_audio_compression_get_default(audio->config.out.codec);
            if (audio->config.out.compression_level >= 0)
            {
                hb_log("work: compression level not specified, track %d setting compression level %.2f",
                       audio->config.out.track,
                       audio->config.out.compression_level);
            }
        }
        else
        {
            float best_compression =
                hb_audio_compression_get_best(audio->config.out.codec,
                                              audio->config.out.compression_level);
            if (best_compression != audio->config.out.compression_level)
            {
                if (best_compression == -1)
                {
                    hb_log("work: track %d, compression level not supported by codec",
                           audio->config.out.track);
                }
                else
                {
                    hb_log("work: sanitizing track %d compression level %.2f to %.2f",
                           audio->config.out.track,
                           audio->config.out.compression_level,
                           best_compression);
                }
                audio->config.out.compression_level = best_compression;
            }
        }


        if (audio->config.out.quality != HB_INVALID_AUDIO_QUALITY)
        {
            float best_quality =
                hb_audio_quality_get_best(audio->config.out.codec,
                                          audio->config.out.quality);
            if (best_quality != audio->config.out.quality)
            {
                if (best_quality == HB_INVALID_AUDIO_QUALITY)
                {
                    hb_log("work: track %d, quality mode not supported by codec",
                           audio->config.out.track);
                }
                else
                {
                    hb_log("work: sanitizing track %d quality %.2f to %.2f",
                           audio->config.out.track,
                           audio->config.out.quality, best_quality);
                }
                audio->config.out.quality = best_quality;
            }
        }


        if (audio->config.out.quality == HB_INVALID_AUDIO_QUALITY)
        {
            if (audio->config.out.bitrate <= 0)
            {

                audio->config.out.bitrate =
                    hb_audio_bitrate_get_default(audio->config.out.codec,
                                                 audio->config.out.samplerate,
                                                 audio->config.out.mixdown);
                if (audio->config.out.bitrate > 0)
                {
                    hb_log("work: bitrate not specified, track %d setting bitrate %d Kbps",
                           audio->config.out.track,
                           audio->config.out.bitrate);
                }
            }
            else
            {
                best_bitrate =
                    hb_audio_bitrate_get_best(audio->config.out.codec,
                                              audio->config.out.bitrate,
                                              audio->config.out.samplerate,
                                              audio->config.out.mixdown);
                if (best_bitrate > 0 &&
                    best_bitrate != audio->config.out.bitrate)
                {

                    hb_log("work: sanitizing track %d bitrate %d to %d Kbps",
                           audio->config.out.track,
                           audio->config.out.bitrate, best_bitrate);
                }
                audio->config.out.bitrate = best_bitrate;
            }
        }


        if (hb_audio_dither_is_supported(audio->config.out.codec))
        {
            if (audio->config.out.dither_method ==
                hb_audio_dither_get_default())
            {

                audio->config.out.dither_method =
                    hb_audio_dither_get_default_method();
            }
        }
        else if (audio->config.out.dither_method !=
                 hb_audio_dither_get_default())
        {

            hb_log("work: track %d, dithering not supported by codec",
                   audio->config.out.track);
        }
    }
    return 0;
}
