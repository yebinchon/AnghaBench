
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int data; } ;
struct TYPE_6__ {int boundary_tag; } ;
typedef TYPE_1__ MPJPEGContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int avio_printf (int ,char*,...) ;
 int avio_write (int ,int ,int ) ;

__attribute__((used)) static int mpjpeg_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    MPJPEGContext *mpj = s->priv_data;
    avio_printf(s->pb, "Content-type: image/jpeg\r\n");
    avio_printf(s->pb, "Content-length: %d\r\n\r\n",
                pkt->size);
    avio_write(s->pb, pkt->data, pkt->size);

    avio_printf(s->pb, "\r\n--%s\r\n", mpj->boundary_tag);
    return 0;
}
