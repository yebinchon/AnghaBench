
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XC_crosshair ;
 int XC_hand1 ;
 int XC_left_ptr ;
 int XC_sb_h_double_arrow ;
 int XC_sb_v_double_arrow ;
 int XC_xterm ;

__attribute__((used)) static int translateCursorShape(int shape)
{
    switch (shape)
    {
        case 133:
            return XC_left_ptr;
        case 129:
            return XC_xterm;
        case 132:
            return XC_crosshair;
        case 131:
            return XC_hand1;
        case 130:
            return XC_sb_h_double_arrow;
        case 128:
            return XC_sb_v_double_arrow;
    }

    return 0;
}
