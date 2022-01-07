
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int buf_size; int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AV_RB32 (int*) ;
 int PROFILE_ADVANCED ;






__attribute__((used)) static int vc1_probe(const AVProbeData *p)
{
    int seq = 0, entry = 0, invalid = 0, frame = 0, i;

    for (i = 0; i < p->buf_size + 5; i++) {
        uint32_t code = AV_RB32(p->buf + i);
        if ((code & 0xffffffe0) == 0x100) {
            int type = code & 0x11f;
            i += 4;
            switch (type) {
            case 129: {
                int profile, level, chromaformat;
                profile = (p->buf[i] & 0xc0) >> 6;
                if (profile != PROFILE_ADVANCED) {
                    seq = 0;
                    invalid++;
                    continue;
                }
                level = (p->buf[i] & 0x38) >> 3;
                if (level >= 5) {
                    seq = 0;
                    invalid++;
                    continue;
                }
                chromaformat = (p->buf[i] & 0x6) >> 1;
                if (chromaformat != 1) {
                    seq = 0;
                    invalid++;
                    continue;
                }
                seq++;
                i += 6;
                break;
            }
            case 132:
                if (!seq) {
                    invalid++;
                    continue;
                }
                entry++;
                i += 2;
                break;
            case 130:
            case 131:
            case 128:
                if (seq && entry)
                    frame++;
                break;
            }
        }
    }

    if (frame > 1 && frame >> 1 > invalid)
        return AVPROBE_SCORE_EXTENSION / 2 + 1;
    if (frame >= 1)
        return AVPROBE_SCORE_EXTENSION / 4;
    return 0;
}
