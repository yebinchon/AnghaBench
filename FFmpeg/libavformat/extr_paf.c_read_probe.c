
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_size; int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int MAGIC ;
 int memcmp (int ,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int read_probe(const AVProbeData *p)
{
    if ((p->buf_size >= strlen(MAGIC)) &&
        !memcmp(p->buf, MAGIC, strlen(MAGIC)))
        return AVPROBE_SCORE_MAX;
    return 0;
}
