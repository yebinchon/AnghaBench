
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int buf_size; int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int EXT_STARTCODE ;
 int SLICE_STARTCODE ;
 int VISUAL_OBJ_STARTCODE ;
 int VOP_STARTCODE ;

__attribute__((used)) static int mpeg4video_probe(const AVProbeData *probe_packet)
{
    uint32_t temp_buffer = -1;
    int VO = 0, VOL = 0, VOP = 0, VISO = 0, res = 0;
    int res_main = 0;
    int i;

    for (i = 0; i < probe_packet->buf_size; i++) {
        temp_buffer = (temp_buffer << 8) + probe_packet->buf[i];
        if (temp_buffer & 0xfffffe00)
            continue;
        if (temp_buffer < 2)
            continue;

        if (temp_buffer == VOP_STARTCODE)
            VOP++;
        else if (temp_buffer == VISUAL_OBJ_STARTCODE)
            VISO++;
        else if (temp_buffer >= 0x100 && temp_buffer < 0x120)
            VO++;
        else if (temp_buffer >= 0x120 && temp_buffer < 0x130)
            VOL++;
        else if (temp_buffer == SLICE_STARTCODE || temp_buffer == EXT_STARTCODE)
            res_main++;
        else if (!(0x1AF < temp_buffer && temp_buffer < 0x1B7) &&
                 !(0x1B9 < temp_buffer && temp_buffer < 0x1C4))
            res++;
    }




    if (res_main && 2*res_main < VOP)
        res += res_main;

    if (VOP >= VISO && VOP >= VOL && VO >= VOL && VOL > 0 && res == 0)
        return VOP+VO > 4 ? AVPROBE_SCORE_EXTENSION : AVPROBE_SCORE_EXTENSION/2;

    if (VOP >= VISO && VOP >= VOL && VO >= VOL && VOL > 0 && VOP+VO > 4)
        return AVPROBE_SCORE_EXTENSION/10;
    return 0;
}
