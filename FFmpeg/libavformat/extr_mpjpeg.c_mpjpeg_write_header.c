
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int boundary_tag; } ;
typedef TYPE_1__ MPJPEGContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_flush (int ) ;
 int avio_printf (int ,char*,int ) ;

__attribute__((used)) static int mpjpeg_write_header(AVFormatContext *s)
{
    MPJPEGContext *mpj = s->priv_data;
    avio_printf(s->pb, "--%s\r\n", mpj->boundary_tag);
    avio_flush(s->pb);
    return 0;
}
