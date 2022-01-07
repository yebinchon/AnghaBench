
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pb; } ;
struct TYPE_6__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int avio_write (int ,int ,int ) ;
 int write_image_header (TYPE_2__*) ;

__attribute__((used)) static int fits_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret = write_image_header(s);
    if (ret < 0)
        return ret;
    avio_write(s->pb, pkt->data, pkt->size);
    return 0;
}
