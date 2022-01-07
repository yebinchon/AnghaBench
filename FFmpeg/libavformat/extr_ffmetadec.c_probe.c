
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int ID_STRING ;
 int memcmp (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int probe(const AVProbeData *p)
{
    if(!memcmp(p->buf, ID_STRING, strlen(ID_STRING)))
        return AVPROBE_SCORE_MAX;
    return 0;
}
