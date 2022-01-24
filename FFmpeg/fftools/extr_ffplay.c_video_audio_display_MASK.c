#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_6__ {int channels; int freq; } ;
struct TYPE_7__ {int height; scalar_t__ show_mode; int width; int audio_write_buf_size; int* sample_array; int last_i_start; int ytop; int xleft; int rdft_bits; double* rdft_data; int xpos; int /*<<< orphan*/  paused; int /*<<< orphan*/  vis_texture; int /*<<< orphan*/  rdft; scalar_t__ sample_array_index; TYPE_1__ audio_tgt; } ;
typedef  TYPE_2__ VideoState ;
struct TYPE_8__ {int x; int w; int h; int /*<<< orphan*/  y; } ;
typedef  TYPE_3__ SDL_Rect ;
typedef  double FFTSample ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  DFT_R2C ; 
 int FUNC0 (int,int) ; 
 int INT_MIN ; 
 int SAMPLE_ARRAY_SIZE ; 
 int /*<<< orphan*/  SDL_BLENDMODE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,void**,int*) ; 
 int /*<<< orphan*/  SDL_PIXELFORMAT_ARGB8888 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHOW_MODE_WAVES ; 
 int audio_callback_time ; 
 int /*<<< orphan*/  FUNC5 (double*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 double* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int) ; 
 double FUNC14 (double,double) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  renderer ; 
 int FUNC16 (double) ; 

__attribute__((used)) static void FUNC17(VideoState *s)
{
    int i, i_start, x, y1, y, ys, delay, n, nb_display_channels;
    int ch, channels, h, h2;
    int64_t time_diff;
    int rdft_bits, nb_freq;

    for (rdft_bits = 1; (1 << rdft_bits) < 2 * s->height; rdft_bits++)
        ;
    nb_freq = 1 << (rdft_bits - 1);

    /* compute display index : center on currently output samples */
    channels = s->audio_tgt.channels;
    nb_display_channels = channels;
    if (!s->paused) {
        int data_used= s->show_mode == SHOW_MODE_WAVES ? s->width : (2*nb_freq);
        n = 2 * channels;
        delay = s->audio_write_buf_size;
        delay /= n;

        /* to be more precise, we take into account the time spent since
           the last buffer computation */
        if (audio_callback_time) {
            time_diff = FUNC6() - audio_callback_time;
            delay -= (time_diff * s->audio_tgt.freq) / 1000000;
        }

        delay += 2 * data_used;
        if (delay < data_used)
            delay = data_used;

        i_start= x = FUNC12(s->sample_array_index - delay * channels, SAMPLE_ARRAY_SIZE);
        if (s->show_mode == SHOW_MODE_WAVES) {
            h = INT_MIN;
            for (i = 0; i < 1000; i += channels) {
                int idx = (SAMPLE_ARRAY_SIZE + x - i) % SAMPLE_ARRAY_SIZE;
                int a = s->sample_array[idx];
                int b = s->sample_array[(idx + 4 * channels) % SAMPLE_ARRAY_SIZE];
                int c = s->sample_array[(idx + 5 * channels) % SAMPLE_ARRAY_SIZE];
                int d = s->sample_array[(idx + 9 * channels) % SAMPLE_ARRAY_SIZE];
                int score = a - d;
                if (h < score && (b ^ c) < 0) {
                    h = score;
                    i_start = idx;
                }
            }
        }

        s->last_i_start = i_start;
    } else {
        i_start = s->last_i_start;
    }

    if (s->show_mode == SHOW_MODE_WAVES) {
        FUNC3(renderer, 255, 255, 255, 255);

        /* total height for one channel */
        h = s->height / nb_display_channels;
        /* graph height / 2 */
        h2 = (h * 9) / 20;
        for (ch = 0; ch < nb_display_channels; ch++) {
            i = i_start + ch;
            y1 = s->ytop + ch * h + (h / 2); /* position of center line */
            for (x = 0; x < s->width; x++) {
                y = (s->sample_array[i] * h2) >> 15;
                if (y < 0) {
                    y = -y;
                    ys = y1 - y;
                } else {
                    ys = y1;
                }
                FUNC13(s->xleft + x, ys, 1, y);
                i += channels;
                if (i >= SAMPLE_ARRAY_SIZE)
                    i -= SAMPLE_ARRAY_SIZE;
            }
        }

        FUNC3(renderer, 0, 0, 255, 255);

        for (ch = 1; ch < nb_display_channels; ch++) {
            y = s->ytop + ch * h;
            FUNC13(s->xleft, y, s->width, 1);
        }
    } else {
        if (FUNC15(&s->vis_texture, SDL_PIXELFORMAT_ARGB8888, s->width, s->height, SDL_BLENDMODE_NONE, 1) < 0)
            return;

        nb_display_channels= FUNC0(nb_display_channels, 2);
        if (rdft_bits != s->rdft_bits) {
            FUNC10(s->rdft);
            FUNC5(s->rdft_data);
            s->rdft = FUNC11(rdft_bits, DFT_R2C);
            s->rdft_bits = rdft_bits;
            s->rdft_data = FUNC8(nb_freq, 4 *sizeof(*s->rdft_data));
        }
        if (!s->rdft || !s->rdft_data){
            FUNC7(NULL, AV_LOG_ERROR, "Failed to allocate buffers for RDFT, switching to waves display\n");
            s->show_mode = SHOW_MODE_WAVES;
        } else {
            FFTSample *data[2];
            SDL_Rect rect = {.x = s->xpos, .y = 0, .w = 1, .h = s->height};
            uint32_t *pixels;
            int pitch;
            for (ch = 0; ch < nb_display_channels; ch++) {
                data[ch] = s->rdft_data + 2 * nb_freq * ch;
                i = i_start + ch;
                for (x = 0; x < 2 * nb_freq; x++) {
                    double w = (x-nb_freq) * (1.0 / nb_freq);
                    data[ch][x] = s->sample_array[i] * (1.0 - w * w);
                    i += channels;
                    if (i >= SAMPLE_ARRAY_SIZE)
                        i -= SAMPLE_ARRAY_SIZE;
                }
                FUNC9(s->rdft, data[ch]);
            }
            /* Least efficient way to do this, we should of course
             * directly access it but it is more than fast enough. */
            if (!FUNC1(s->vis_texture, &rect, (void **)&pixels, &pitch)) {
                pitch >>= 2;
                pixels += pitch * s->height;
                for (y = 0; y < s->height; y++) {
                    double w = 1 / FUNC16(nb_freq);
                    int a = FUNC16(w * FUNC16(data[0][2 * y + 0] * data[0][2 * y + 0] + data[0][2 * y + 1] * data[0][2 * y + 1]));
                    int b = (nb_display_channels == 2 ) ? FUNC16(w * FUNC14(data[1][2 * y + 0], data[1][2 * y + 1]))
                                                        : a;
                    a = FUNC0(a, 255);
                    b = FUNC0(b, 255);
                    pixels -= pitch;
                    *pixels = (a << 16) + (b << 8) + ((a+b) >> 1);
                }
                FUNC4(s->vis_texture);
            }
            FUNC2(renderer, s->vis_texture, NULL, NULL);
        }
        if (!s->paused)
            s->xpos++;
        if (s->xpos >= s->width)
            s->xpos= s->xleft;
    }
}