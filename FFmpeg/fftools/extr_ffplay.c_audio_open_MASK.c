#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct AudioParams {int freq; int channels; scalar_t__ frame_size; scalar_t__ bytes_per_sec; int /*<<< orphan*/  fmt; int /*<<< orphan*/  channel_layout; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int channels; int freq; int size; int /*<<< orphan*/  format; void* userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  samples; scalar_t__ silence; } ;
typedef  TYPE_1__ SDL_AudioSpec ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_S16SYS ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO_DOWNMIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int,int) ; 
 int FUNC2 (int const*) ; 
 int SDL_AUDIO_ALLOW_CHANNELS_CHANGE ; 
 int SDL_AUDIO_ALLOW_FREQUENCY_CHANGE ; 
 int SDL_AUDIO_MAX_CALLBACKS_PER_SEC ; 
 int /*<<< orphan*/  SDL_AUDIO_MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  audio_dev ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdl_audio_callback ; 

__attribute__((used)) static int FUNC12(void *opaque, int64_t wanted_channel_layout, int wanted_nb_channels, int wanted_sample_rate, struct AudioParams *audio_hw_params)
{
    SDL_AudioSpec wanted_spec, spec;
    const char *env;
    static const int next_nb_channels[] = {0, 0, 1, 6, 2, 6, 4, 6};
    static const int next_sample_rates[] = {0, 44100, 48000, 96000, 192000};
    int next_sample_rate_idx = FUNC2(next_sample_rates) - 1;

    env = FUNC5("SDL_AUDIO_CHANNELS");
    if (env) {
        wanted_nb_channels = FUNC6(env);
        wanted_channel_layout = FUNC8(wanted_nb_channels);
    }
    if (!wanted_channel_layout || wanted_nb_channels != FUNC7(wanted_channel_layout)) {
        wanted_channel_layout = FUNC8(wanted_nb_channels);
        wanted_channel_layout &= ~AV_CH_LAYOUT_STEREO_DOWNMIX;
    }
    wanted_nb_channels = FUNC7(wanted_channel_layout);
    wanted_spec.channels = wanted_nb_channels;
    wanted_spec.freq = wanted_sample_rate;
    if (wanted_spec.freq <= 0 || wanted_spec.channels <= 0) {
        FUNC9(NULL, AV_LOG_ERROR, "Invalid sample rate or channel count!\n");
        return -1;
    }
    while (next_sample_rate_idx && next_sample_rates[next_sample_rate_idx] >= wanted_spec.freq)
        next_sample_rate_idx--;
    wanted_spec.format = AUDIO_S16SYS;
    wanted_spec.silence = 0;
    wanted_spec.samples = FUNC0(SDL_AUDIO_MIN_BUFFER_SIZE, 2 << FUNC10(wanted_spec.freq / SDL_AUDIO_MAX_CALLBACKS_PER_SEC));
    wanted_spec.callback = sdl_audio_callback;
    wanted_spec.userdata = opaque;
    while (!(audio_dev = FUNC4(NULL, 0, &wanted_spec, &spec, SDL_AUDIO_ALLOW_FREQUENCY_CHANGE | SDL_AUDIO_ALLOW_CHANNELS_CHANGE))) {
        FUNC9(NULL, AV_LOG_WARNING, "SDL_OpenAudio (%d channels, %d Hz): %s\n",
               wanted_spec.channels, wanted_spec.freq, FUNC3());
        wanted_spec.channels = next_nb_channels[FUNC1(7, wanted_spec.channels)];
        if (!wanted_spec.channels) {
            wanted_spec.freq = next_sample_rates[next_sample_rate_idx--];
            wanted_spec.channels = wanted_nb_channels;
            if (!wanted_spec.freq) {
                FUNC9(NULL, AV_LOG_ERROR,
                       "No more combinations to try, audio open failed\n");
                return -1;
            }
        }
        wanted_channel_layout = FUNC8(wanted_spec.channels);
    }
    if (spec.format != AUDIO_S16SYS) {
        FUNC9(NULL, AV_LOG_ERROR,
               "SDL advised audio format %d is not supported!\n", spec.format);
        return -1;
    }
    if (spec.channels != wanted_spec.channels) {
        wanted_channel_layout = FUNC8(spec.channels);
        if (!wanted_channel_layout) {
            FUNC9(NULL, AV_LOG_ERROR,
                   "SDL advised channel count %d is not supported!\n", spec.channels);
            return -1;
        }
    }

    audio_hw_params->fmt = AV_SAMPLE_FMT_S16;
    audio_hw_params->freq = spec.freq;
    audio_hw_params->channel_layout = wanted_channel_layout;
    audio_hw_params->channels =  spec.channels;
    audio_hw_params->frame_size = FUNC11(NULL, audio_hw_params->channels, 1, audio_hw_params->fmt, 1);
    audio_hw_params->bytes_per_sec = FUNC11(NULL, audio_hw_params->channels, audio_hw_params->freq, audio_hw_params->fmt, 1);
    if (audio_hw_params->bytes_per_sec <= 0 || audio_hw_params->frame_size <= 0) {
        FUNC9(NULL, AV_LOG_ERROR, "av_samples_get_buffer_size failed\n");
        return -1;
    }
    return spec.size;
}