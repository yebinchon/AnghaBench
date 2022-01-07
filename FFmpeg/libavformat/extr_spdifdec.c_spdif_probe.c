
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_3__ {int buf_size; int buf; } ;
typedef TYPE_1__ AVProbeData ;


 int ff_spdif_probe (int ,int ,int*) ;

__attribute__((used)) static int spdif_probe(const AVProbeData *p)
{
    enum AVCodecID codec;
    return ff_spdif_probe (p->buf, p->buf_size, &codec);
}
