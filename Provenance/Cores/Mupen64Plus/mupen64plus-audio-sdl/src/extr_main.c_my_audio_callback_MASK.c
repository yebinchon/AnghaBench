#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int GameFreq ; 
 int /*<<< orphan*/  M64MSG_VERBOSE ; 
 unsigned int N64_SAMPLE_BYTES ; 
 int OutputFreq ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int SDL_SAMPLE_BYTES ; 
 scalar_t__ VOLUME_TYPE_OSS ; 
 int /*<<< orphan*/  VolSDL ; 
 scalar_t__ VolumeControlType ; 
 unsigned int buffer_pos ; 
 int /*<<< orphan*/  l_PluginInit ; 
 int last_callback_ticks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 unsigned char* mixBuffer ; 
 int /*<<< orphan*/ * primaryBuffer ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,int,unsigned char*,int,int) ; 
 int speed_factor ; 
 int /*<<< orphan*/  underrun_count ; 

__attribute__((used)) static void FUNC6(void *userdata, unsigned char *stream, int len)
{
    int oldsamplerate, newsamplerate;

    if (!l_PluginInit)
        return;

    /* mark the time, for synchronization on the input side */
    last_callback_ticks = FUNC1();

    newsamplerate = OutputFreq * 100 / speed_factor;
    oldsamplerate = GameFreq;

    if (buffer_pos > (unsigned int) (len * oldsamplerate) / newsamplerate)
    {
        int input_used;
#if defined(HAS_OSS_SUPPORT)
        if (VolumeControlType == VOLUME_TYPE_OSS)
        {
            input_used = resample(primaryBuffer, buffer_pos, oldsamplerate, stream, len, newsamplerate);
        }
        else
#endif
        {
            input_used = FUNC5(primaryBuffer, buffer_pos, oldsamplerate, mixBuffer, len, newsamplerate);
            FUNC4(stream, 0, len);
            FUNC2(stream, mixBuffer, len, VolSDL);
        }
        FUNC3(primaryBuffer, &primaryBuffer[input_used], buffer_pos - input_used);
        buffer_pos -= input_used;
        FUNC0(M64MSG_VERBOSE, "%03i my_audio_callback: used %i samples",
                     last_callback_ticks % 1000, len / SDL_SAMPLE_BYTES);
    }
    else
    {
        unsigned int SamplesNeeded = (len * oldsamplerate) / (newsamplerate * SDL_SAMPLE_BYTES);
        unsigned int SamplesPresent = buffer_pos / N64_SAMPLE_BYTES;
        underrun_count++;
        FUNC0(M64MSG_VERBOSE, "%03i Buffer underflow (%i).  %i samples present, %i needed",
                     last_callback_ticks % 1000, underrun_count, SamplesPresent, SamplesNeeded);
        FUNC4(stream , 0, len);
    }
}