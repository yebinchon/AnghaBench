
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int hcom_probe(const AVProbeData *p)
{
    if (p->buf_size < 132)
        return 0;
    if (!memcmp(p->buf+65, "FSSD", 4) &&
        !memcmp(p->buf+128, "HCOM", 4))
        return AVPROBE_SCORE_MAX;
    return 0;
}
