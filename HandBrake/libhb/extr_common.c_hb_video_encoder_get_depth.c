
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int hb_video_encoder_get_depth(int encoder)
{
    switch (encoder)
    {



        case 131:
        case 130:
            return 10;
        case 129:
            return 12;
        case 128:
            return 16;
        default:
            return 8;
    }
}
