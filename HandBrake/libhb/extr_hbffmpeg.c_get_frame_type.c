
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HB_FRAME_B ;
 int HB_FRAME_I ;
 int HB_FRAME_P ;

__attribute__((used)) static int get_frame_type(int type)
{
    switch (type)
    {
        case 134:
            return HB_FRAME_B;

        case 130:
        case 131:
        case 128:
            return HB_FRAME_P;

        case 133:
        case 129:
        case 132:
        default:
            return HB_FRAME_I;
    }
}
