
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* buf; int buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int ff_data_identifier_is_teletext (int) ;
 int ff_data_unit_id_is_teletext (int const) ;

__attribute__((used)) static int dvbtxt_probe(const AVProbeData *p)
{
    const uint8_t *end = p->buf + p->buf_size;
    const uint8_t *buf;



    if ((p->buf_size + 45) % 184 != 0)
        return 0;

    if (!ff_data_identifier_is_teletext(p->buf[0]))
        return 0;

    for (buf = p->buf + 1; buf < end; buf += 46) {
        if (!ff_data_unit_id_is_teletext(buf[0]) && buf[0] != 0xff)
            return 0;
        if (buf[1] != 0x2c)
            return 0;
    }

    return AVPROBE_SCORE_MAX / 2;
}
