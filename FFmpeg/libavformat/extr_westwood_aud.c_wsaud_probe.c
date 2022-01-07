
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; int* buf; } ;
typedef TYPE_1__ AVProbeData ;


 scalar_t__ AUD_CHUNK_PREAMBLE_SIZE ;
 scalar_t__ AUD_CHUNK_SIGNATURE ;
 scalar_t__ AUD_HEADER_SIZE ;
 int AVPROBE_SCORE_EXTENSION ;
 int AV_RL16 (int*) ;
 scalar_t__ AV_RL32 (int*) ;

__attribute__((used)) static int wsaud_probe(const AVProbeData *p)
{
    int field;
    if (p->buf_size < AUD_HEADER_SIZE + AUD_CHUNK_PREAMBLE_SIZE)
        return 0;


    field = AV_RL16(&p->buf[0]);
    if ((field < 8000) || (field > 48000))
        return 0;



    if (p->buf[10] & 0xFC)
        return 0;

    if (p->buf[11] != 99 && p->buf[11] != 1)
        return 0;


    if (AV_RL32(&p->buf[16]) != AUD_CHUNK_SIGNATURE)
        return 0;


    return AVPROBE_SCORE_EXTENSION;
}
