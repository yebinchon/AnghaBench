
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; char* buf; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_EXTENSION ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RB24 (char*) ;
 int get_bits (int *,int) ;
 int get_bits_long (int *,int) ;
 scalar_t__ init_get_bits8 (int *,int*,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int swf_probe(const AVProbeData *p)
{
    GetBitContext gb;
    int len, xmin, xmax, ymin, ymax;

    if(p->buf_size < 15)
        return 0;


    if ( AV_RB24(p->buf) != AV_RB24("CWS")
        && AV_RB24(p->buf) != AV_RB24("FWS"))
        return 0;

    if ( AV_RB24(p->buf) == AV_RB24("CWS")
        && p->buf[3] <= 20)
        return AVPROBE_SCORE_MAX / 4 + 1;

    if (init_get_bits8(&gb, p->buf + 3, p->buf_size - 3) < 0)
        return 0;

    skip_bits(&gb, 40);
    len = get_bits(&gb, 5);
    if (!len)
        return 0;
    xmin = get_bits_long(&gb, len);
    xmax = get_bits_long(&gb, len);
    ymin = get_bits_long(&gb, len);
    ymax = get_bits_long(&gb, len);
    if (xmin || ymin || !xmax || !ymax)
        return 0;

    if (p->buf[3] >= 20 || xmax < 16 || ymax < 16)
        return AVPROBE_SCORE_MAX / 4;

    return AVPROBE_SCORE_EXTENSION + 1;
}
