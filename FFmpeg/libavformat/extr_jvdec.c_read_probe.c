
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; scalar_t__ buf_size; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int MAGIC ;
 int memcmp (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int read_probe(const AVProbeData *pd)
{
    if (pd->buf[0] == 'J' && pd->buf[1] == 'V' && strlen(MAGIC) + 4 <= pd->buf_size &&
        !memcmp(pd->buf + 4, MAGIC, strlen(MAGIC)))
        return AVPROBE_SCORE_MAX;
    return 0;
}
