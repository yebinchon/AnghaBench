
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pict_type; int b_code; int f_code; } ;
typedef TYPE_1__ MpegEncContext ;






 int FFMAX3 (int ,int ,int) ;

int ff_mpeg4_get_video_packet_prefix_length(MpegEncContext *s)
{
    switch (s->pict_type) {
    case 130:
        return 16;
    case 129:
    case 128:
        return s->f_code + 15;
    case 131:
        return FFMAX3(s->f_code, s->b_code, 2) + 15;
    default:
        return -1;
    }
}
