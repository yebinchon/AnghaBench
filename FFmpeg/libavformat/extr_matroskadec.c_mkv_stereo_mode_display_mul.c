
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void mkv_stereo_mode_display_mul(int stereo_mode,
                                        int *h_width, int *h_height)
{
    switch (stereo_mode) {
        case 132:
        case 136:
        case 137:
        case 139:
        case 140:
            break;
        case 131:
        case 133:
        case 134:
        case 135:
            *h_width = 2;
            break;
        case 138:
        case 128:
        case 129:
        case 130:
            *h_height = 2;
            break;
    }
}
