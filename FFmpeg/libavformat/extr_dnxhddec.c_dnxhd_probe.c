
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB16 (scalar_t__) ;
 int AV_RB32 (scalar_t__) ;
 scalar_t__ ff_dnxhd_parse_header_prefix (scalar_t__) ;

__attribute__((used)) static int dnxhd_probe(const AVProbeData *p)
{
    int w, h, compression_id;
    if (p->buf_size < 0x2c)
        return 0;
    if (ff_dnxhd_parse_header_prefix(p->buf) == 0)
        return 0;
    h = AV_RB16(p->buf + 0x18);
    w = AV_RB16(p->buf + 0x1a);
    if (!w || !h)
        return 0;
    compression_id = AV_RB32(p->buf + 0x28);
    if ((compression_id < 1235 || compression_id > 1260) &&
        (compression_id < 1270 || compression_id > 1274))
        return 0;
    return AVPROBE_SCORE_MAX;
}
