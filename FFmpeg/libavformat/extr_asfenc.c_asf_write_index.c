
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int packet_number; int packet_count; } ;
struct TYPE_5__ {int * pb; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFIndex ;


 int ASF_INDEXED_INTERVAL ;
 int avio_wl16 (int *,int ) ;
 int avio_wl32 (int *,int) ;
 int avio_wl64 (int *,int) ;
 int ff_asf_my_guid ;
 int ff_asf_simple_index_header ;
 int ff_put_guid (int *,int *) ;

__attribute__((used)) static int asf_write_index(AVFormatContext *s, const ASFIndex *index,
                           uint16_t max, uint32_t count)
{
    AVIOContext *pb = s->pb;
    int i;

    ff_put_guid(pb, &ff_asf_simple_index_header);
    avio_wl64(pb, 24 + 16 + 8 + 4 + 4 + (4 + 2) * count);
    ff_put_guid(pb, &ff_asf_my_guid);
    avio_wl64(pb, ASF_INDEXED_INTERVAL);
    avio_wl32(pb, max);
    avio_wl32(pb, count);
    for (i = 0; i < count; i++) {
        avio_wl32(pb, index[i].packet_number);
        avio_wl16(pb, index[i].packet_count);
    }

    return 0;
}
