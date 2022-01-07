
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*,int,int,...) ;
 int GameFreq ;
 int M64MSG_VERBOSE ;
 unsigned int N64_SAMPLE_BYTES ;
 int OutputFreq ;
 int SDL_GetTicks () ;
 int SDL_MixAudio (unsigned char*,unsigned char*,int,int ) ;
 int SDL_SAMPLE_BYTES ;
 scalar_t__ VOLUME_TYPE_OSS ;
 int VolSDL ;
 scalar_t__ VolumeControlType ;
 unsigned int buffer_pos ;
 int l_PluginInit ;
 int last_callback_ticks ;
 int memmove (int *,int *,unsigned int) ;
 int memset (unsigned char*,int ,int) ;
 unsigned char* mixBuffer ;
 int * primaryBuffer ;
 int resample (int *,unsigned int,int,unsigned char*,int,int) ;
 int speed_factor ;
 int underrun_count ;

__attribute__((used)) static void my_audio_callback(void *userdata, unsigned char *stream, int len)
{
    int oldsamplerate, newsamplerate;

    if (!l_PluginInit)
        return;


    last_callback_ticks = SDL_GetTicks();

    newsamplerate = OutputFreq * 100 / speed_factor;
    oldsamplerate = GameFreq;

    if (buffer_pos > (unsigned int) (len * oldsamplerate) / newsamplerate)
    {
        int input_used;







        {
            input_used = resample(primaryBuffer, buffer_pos, oldsamplerate, mixBuffer, len, newsamplerate);
            memset(stream, 0, len);
            SDL_MixAudio(stream, mixBuffer, len, VolSDL);
        }
        memmove(primaryBuffer, &primaryBuffer[input_used], buffer_pos - input_used);
        buffer_pos -= input_used;
        DebugMessage(M64MSG_VERBOSE, "%03i my_audio_callback: used %i samples",
                     last_callback_ticks % 1000, len / SDL_SAMPLE_BYTES);
    }
    else
    {
        unsigned int SamplesNeeded = (len * oldsamplerate) / (newsamplerate * SDL_SAMPLE_BYTES);
        unsigned int SamplesPresent = buffer_pos / N64_SAMPLE_BYTES;
        underrun_count++;
        DebugMessage(M64MSG_VERBOSE, "%03i Buffer underflow (%i).  %i samples present, %i needed",
                     last_callback_ticks % 1000, underrun_count, SamplesPresent, SamplesNeeded);
        memset(stream , 0, len);
    }
}
