
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *translateCursorShape(int shape)
{
    switch (shape)
    {
        case 133:
            return "left_ptr";
        case 129:
            return "xterm";
        case 132:
            return "crosshair";
        case 131:
            return "grabbing";
        case 130:
            return "sb_h_double_arrow";
        case 128:
            return "sb_v_double_arrow";
    }
    return ((void*)0);
}
