
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RB32 (scalar_t__) ;
 scalar_t__ AV_RB64 (char*) ;
 int AV_WB32 (char*,int) ;
 int rol (int,int) ;

__attribute__((used)) static int redspark_probe(const AVProbeData *p)
{
    uint32_t key, data;
    uint8_t header[8];


    data = AV_RB32(p->buf);
    key = data ^ 0x52656453;
    data ^= key;
    AV_WB32(header, data);
    key = rol(key, 11);

    key += rol(key, 3);
    data = AV_RB32(p->buf + 4) ^ key;
    AV_WB32(header + 4, data);

    if (AV_RB64(header) == AV_RB64("RedSpark"))
        return AVPROBE_SCORE_MAX;

    return 0;
}
