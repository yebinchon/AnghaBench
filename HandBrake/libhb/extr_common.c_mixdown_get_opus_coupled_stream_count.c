
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int mixdown_get_opus_coupled_stream_count(int mixdown)
{
    switch (mixdown)
    {
        case 133:
        case 134:
            return 3;

        case 136:
            return 2;

        case 131:
        case 132:
        case 129:
            return 0;

        case 130:
        case 128:
        case 135:


            return 0;

        default:
            return 1;
    }
}
