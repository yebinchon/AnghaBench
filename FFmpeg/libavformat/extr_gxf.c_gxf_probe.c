
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int startcode ;
typedef int endcode ;
struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int memcmp (int *,int const*,int) ;

__attribute__((used)) static int gxf_probe(const AVProbeData *p) {
    static const uint8_t startcode[] = {0, 0, 0, 0, 1, 0xbc};
    static const uint8_t endcode[] = {0, 0, 0, 0, 0xe1, 0xe2};
    if (!memcmp(p->buf, startcode, sizeof(startcode)) &&
        !memcmp(&p->buf[16 - sizeof(endcode)], endcode, sizeof(endcode)))
        return AVPROBE_SCORE_MAX;
    return 0;
}
