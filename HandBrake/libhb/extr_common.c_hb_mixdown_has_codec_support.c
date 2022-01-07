
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int HB_ACODEC_PASS_FLAG ;

 int HB_AMIXDOWN_5POINT1 ;
 int HB_AMIXDOWN_7POINT1 ;
 int HB_AMIXDOWN_DOLBYPLII ;
 int HB_AMIXDOWN_NONE ;

int hb_mixdown_has_codec_support(int mixdown, uint32_t codec)
{

    if (codec & HB_ACODEC_PASS_FLAG)
        return (mixdown == HB_AMIXDOWN_NONE);


    if (mixdown == HB_AMIXDOWN_NONE)
        return 0;

    switch (codec)
    {
        case 128:
        case 132:
        case 131:
        case 129:
        case 137:
        case 136:
        case 133:
            return (mixdown <= HB_AMIXDOWN_7POINT1);

        case 130:
            return (mixdown <= HB_AMIXDOWN_DOLBYPLII);

        case 135:
        case 134:
            return ((mixdown <= HB_AMIXDOWN_5POINT1) ||
                    (mixdown == HB_AMIXDOWN_7POINT1));

        default:
            return (mixdown <= HB_AMIXDOWN_5POINT1);
    }
}
