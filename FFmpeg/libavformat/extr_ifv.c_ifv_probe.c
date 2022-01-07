
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ifv_magic ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int memcmp (int ,int const*,int) ;

__attribute__((used)) static int ifv_probe(const AVProbeData *p)
{
    static const uint8_t ifv_magic[] = {0x11, 0xd2, 0xd3, 0xab, 0xba, 0xa9,
        0xcf, 0x11, 0x8e, 0xe6, 0x00, 0xc0, 0x0c, 0x20, 0x53, 0x65, 0x44};

    if (!memcmp(p->buf, ifv_magic, sizeof(ifv_magic)))
        return AVPROBE_SCORE_MAX;

    return 0;
}
