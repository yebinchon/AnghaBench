
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
int hb_audio_samplerate_is_supported(int samplerate, uint32_t codec)
{
    switch (codec)
    {
        case 132:
        case 129:
        case 131:



            if (samplerate < 32000)
                return 0;
            else
                return 1;
        case 130:

            if (samplerate < 16000)
                return 0;
             else
                return 1;
        case 128:
            switch (samplerate)
            {


                case 8000:
                case 12000:
                case 16000:
                case 24000:
                case 48000:
                    return 1;
                default:
                    return 0;
            }
        default:
            return 1;
    }
}
