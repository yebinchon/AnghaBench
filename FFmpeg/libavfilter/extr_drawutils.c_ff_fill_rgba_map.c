
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;


 size_t ALPHA ;
 int AVERROR (int ) ;
 size_t BLUE ;
 int EINVAL ;
 size_t GREEN ;
 size_t RED ;

int ff_fill_rgba_map(uint8_t *rgba_map, enum AVPixelFormat pix_fmt)
{
    switch (pix_fmt) {
    case 162:
    case 160: rgba_map[ALPHA] = 0; rgba_map[RED ] = 1; rgba_map[GREEN] = 2; rgba_map[BLUE ] = 3; break;
    case 163:
    case 161: rgba_map[ALPHA] = 0; rgba_map[BLUE ] = 1; rgba_map[GREEN] = 2; rgba_map[RED ] = 3; break;
    case 131:
    case 132:
    case 129:
    case 128:
    case 134:
    case 130:
    case 133: rgba_map[RED ] = 0; rgba_map[GREEN] = 1; rgba_map[BLUE ] = 2; rgba_map[ALPHA] = 3; break;
    case 156:
    case 157:
    case 154:
    case 153:
    case 155:
    case 159:
    case 158: rgba_map[BLUE ] = 0; rgba_map[GREEN] = 1; rgba_map[RED ] = 2; rgba_map[ALPHA] = 3; break;
    case 135:
    case 136:
    case 143:
    case 144:
    case 141:
    case 142:
    case 139:
    case 140:
    case 137:
    case 138:
    case 152:
    case 150:
    case 151:
    case 148:
    case 149:
    case 146:
    case 147:
    case 145: rgba_map[GREEN] = 0; rgba_map[BLUE ] = 1; rgba_map[RED ] = 2; rgba_map[ALPHA] = 3; break;
    default:
        return AVERROR(EINVAL);
    }
    return 0;
}
