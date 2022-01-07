
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int seqno; } ;
struct TYPE_4__ {int * pb; TYPE_2__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int ) ;

__attribute__((used)) static void put_chunk(AVFormatContext *s, int type,
                      int payload_length, int flags)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    int length;

    length = payload_length + 8;
    avio_wl16(pb, type);
    avio_wl16(pb, length);
    avio_wl32(pb, asf->seqno);
    avio_wl16(pb, flags);
    avio_wl16(pb, length);
    asf->seqno++;
}
