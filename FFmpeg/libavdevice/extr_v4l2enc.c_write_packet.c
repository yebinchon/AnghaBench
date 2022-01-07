
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int errno ;
 int write (int ,int ,int ) ;

__attribute__((used)) static int write_packet(AVFormatContext *s1, AVPacket *pkt)
{
    const V4L2Context *s = s1->priv_data;
    if (write(s->fd, pkt->data, pkt->size) == -1)
        return AVERROR(errno);
    return 0;
}
