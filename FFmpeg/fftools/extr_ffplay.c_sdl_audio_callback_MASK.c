#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int frame_size; double bytes_per_sec; } ;
struct TYPE_6__ {int audio_buf_index; int audio_buf_size; scalar_t__ show_mode; scalar_t__ audio_volume; int audio_write_buf_size; int audio_hw_buf_size; int /*<<< orphan*/  audclk; int /*<<< orphan*/  extclk; int /*<<< orphan*/  audio_clock_serial; TYPE_1__ audio_tgt; scalar_t__ audio_clock; int /*<<< orphan*/ * audio_buf; int /*<<< orphan*/  muted; } ;
typedef  TYPE_2__ VideoState ;
typedef  int /*<<< orphan*/  Uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_S16SYS ; 
 int SDL_AUDIO_MIN_BUFFER_SIZE ; 
 scalar_t__ SDL_MIX_MAXVOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ SHOW_MODE_VIDEO ; 
 double audio_callback_time ; 
 int FUNC1 (TYPE_2__*) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(void *opaque, Uint8 *stream, int len)
{
    VideoState *is = opaque;
    int audio_size, len1;

    audio_callback_time = FUNC2();

    while (len > 0) {
        if (is->audio_buf_index >= is->audio_buf_size) {
           audio_size = FUNC1(is);
           if (audio_size < 0) {
                /* if error, just output silence */
               is->audio_buf = NULL;
               is->audio_buf_size = SDL_AUDIO_MIN_BUFFER_SIZE / is->audio_tgt.frame_size * is->audio_tgt.frame_size;
           } else {
               if (is->show_mode != SHOW_MODE_VIDEO)
                   FUNC8(is, (int16_t *)is->audio_buf, audio_size);
               is->audio_buf_size = audio_size;
           }
           is->audio_buf_index = 0;
        }
        len1 = is->audio_buf_size - is->audio_buf_index;
        if (len1 > len)
            len1 = len;
        if (!is->muted && is->audio_buf && is->audio_volume == SDL_MIX_MAXVOLUME)
            FUNC4(stream, (uint8_t *)is->audio_buf + is->audio_buf_index, len1);
        else {
            FUNC5(stream, 0, len1);
            if (!is->muted && is->audio_buf)
                FUNC0(stream, (uint8_t *)is->audio_buf + is->audio_buf_index, AUDIO_S16SYS, len1, is->audio_volume);
        }
        len -= len1;
        stream += len1;
        is->audio_buf_index += len1;
    }
    is->audio_write_buf_size = is->audio_buf_size - is->audio_buf_index;
    /* Let's assume the audio driver that is used by SDL has two periods. */
    if (!FUNC3(is->audio_clock)) {
        FUNC6(&is->audclk, is->audio_clock - (double)(2 * is->audio_hw_buf_size + is->audio_write_buf_size) / is->audio_tgt.bytes_per_sec, is->audio_clock_serial, audio_callback_time / 1000000.0);
        FUNC7(&is->extclk, &is->audclk);
    }
}