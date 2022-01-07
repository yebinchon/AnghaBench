
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
 int HB_AMIXDOWN_5POINT1 ;
 int HB_AMIXDOWN_7POINT1 ;
 int HB_AMIXDOWN_DOLBYPLII ;
 int hb_mixdown_get_best (int,int ,int) ;

int hb_mixdown_get_default(uint32_t codec, uint64_t layout)
{
    int mixdown;
    switch (codec)
    {

        case 130:
        case 129:
        case 128:
        case 136:
        case 135:
        case 132:
        case 134:
        case 133:
            mixdown = HB_AMIXDOWN_7POINT1;
            break;


        case 137:
        case 131:
            mixdown = HB_AMIXDOWN_5POINT1;
            break;


        default:
            mixdown = HB_AMIXDOWN_DOLBYPLII;
            break;
    }


    return hb_mixdown_get_best(codec, layout, mixdown);
}
