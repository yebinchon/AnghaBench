
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ buf_size; scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 int AV_RL32 (scalar_t__) ;
 scalar_t__ XMV_MIN_HEADER_SIZE ;
 int memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int xmv_probe(const AVProbeData *p)
{
    uint32_t file_version;

    if (p->buf_size < XMV_MIN_HEADER_SIZE)
        return 0;

    file_version = AV_RL32(p->buf + 16);
    if ((file_version == 0) || (file_version > 4))
        return 0;

    if (!memcmp(p->buf + 12, "xobX", 4))
        return AVPROBE_SCORE_MAX;

    return 0;
}
