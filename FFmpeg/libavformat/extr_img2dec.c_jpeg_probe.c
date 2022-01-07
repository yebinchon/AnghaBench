
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;
 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB16 (int const*) ;
 int AV_RB32 (int const*) ;



 int JPG ;
 int TEM ;

__attribute__((used)) static int jpeg_probe(const AVProbeData *p)
{
    const uint8_t *b = p->buf;
    int i, state = 129;

    if (AV_RB16(b) != 0xFFD8 ||
        AV_RB32(b) == 0xFFD8FFF7)
    return 0;

    b += 2;
    for (i = 0; i < p->buf_size - 3; i++) {
        int c;
        if (b[i] != 0xFF)
            continue;
        c = b[i + 1];
        switch (c) {
        case 129:
            return 0;
        case 136:
        case 135:
        case 134:
        case 133:
        case 132:
        case 131:
        case 130:
            i += AV_RB16(&b[i + 2]) + 1;
            if (state != 129)
                return 0;
            state = 136;
            break;
        case 128:
            i += AV_RB16(&b[i + 2]) + 1;
            if (state != 136 && state != 128)
                return 0;
            state = 128;
            break;
        case 137:
            if (state != 128)
                return 0;
            state = 137;
            break;
        case 138:
        case 155:
        case 154:
        case 147:
        case 146:
        case 145:
        case 144:
        case 143:
        case 142:
        case 141:
        case 140:
        case 153:
        case 152:
        case 151:
        case 150:
        case 149:
        case 148:
        case 139:
            i += AV_RB16(&b[i + 2]) + 1;
            break;
        default:
            if ( (c > TEM && c < 136)
                || c == JPG)
                return 0;
        }
    }

    if (state == 137)
        return AVPROBE_SCORE_EXTENSION + 1;
    if (state == 128)
        return AVPROBE_SCORE_EXTENSION / 2;
    return AVPROBE_SCORE_EXTENSION / 8;
}
