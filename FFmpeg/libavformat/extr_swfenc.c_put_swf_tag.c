
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int tag; int tag_pos; } ;
typedef TYPE_1__ SWFContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int TAG_LONG ;
 int avio_tell (int *) ;
 int avio_wl16 (int *,int ) ;
 int avio_wl32 (int *,int ) ;

__attribute__((used)) static void put_swf_tag(AVFormatContext *s, int tag)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;

    swf->tag_pos = avio_tell(pb);
    swf->tag = tag;

    if (tag & TAG_LONG) {
        avio_wl16(pb, 0);
        avio_wl32(pb, 0);
    } else {
        avio_wl16(pb, 0);
    }
}
