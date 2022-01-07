
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int (* read_packet ) (int ,int *,int) ;scalar_t__ max_packet_size; int opaque; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int av_assert2 (int) ;
 int av_log (int *,int ,char*) ;
 int stub1 (int ,int *,int) ;

__attribute__((used)) static int read_packet_wrapper(AVIOContext *s, uint8_t *buf, int size)
{
    int ret;

    if (!s->read_packet)
        return AVERROR(EINVAL);
    ret = s->read_packet(s->opaque, buf, size);






    av_assert2(ret || s->max_packet_size);

    return ret;
}
