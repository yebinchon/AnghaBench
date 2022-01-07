
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;







float hb_audio_compression_get_default(uint32_t codec)
{
    switch (codec)
    {
        case 131:
        case 130:
            return 5.;

        case 129:
            return 2.;

        case 128:
            return 10.;

        default:
            return -1.;
    }
}
