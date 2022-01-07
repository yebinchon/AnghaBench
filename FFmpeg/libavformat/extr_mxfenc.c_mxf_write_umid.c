
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int umid; int instance_number; } ;
typedef TYPE_1__ MXFContext ;
typedef TYPE_2__ AVFormatContext ;


 int avio_w8 (int ,int) ;
 int avio_wb24 (int ,int ) ;
 int avio_write (int ,int ,int) ;
 int umid_ul ;

__attribute__((used)) static void mxf_write_umid(AVFormatContext *s, int type)
{
    MXFContext *mxf = s->priv_data;
    avio_write(s->pb, umid_ul, 13);
    avio_wb24(s->pb, mxf->instance_number);
    avio_write(s->pb, mxf->umid, 15);
    avio_w8(s->pb, type);
}
