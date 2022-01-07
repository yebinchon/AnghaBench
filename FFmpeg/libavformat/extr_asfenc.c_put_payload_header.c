
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ multi_payloads_present; int pb; } ;
struct TYPE_7__ {int num; int seq; } ;
struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFStream ;
typedef TYPE_3__ ASFContext ;


 int ASF_PAYLOAD_REPLICATED_DATA_LENGTH ;
 int ASF_PL_FLAG_KEY_FRAME ;
 int AV_PKT_FLAG_KEY ;
 int avio_w8 (int *,int) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int) ;

__attribute__((used)) static void put_payload_header(AVFormatContext *s, ASFStream *stream,
                               int64_t presentation_time, int m_obj_size,
                               int m_obj_offset, int payload_len, int flags)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = &asf->pb;
    int val;

    val = stream->num;
    if (flags & AV_PKT_FLAG_KEY)
        val |= ASF_PL_FLAG_KEY_FRAME;
    avio_w8(pb, val);

    avio_w8(pb, stream->seq);
    avio_wl32(pb, m_obj_offset);






    avio_w8(pb, ASF_PAYLOAD_REPLICATED_DATA_LENGTH);

    avio_wl32(pb, m_obj_size);
    avio_wl32(pb, (uint32_t) presentation_time);

    if (asf->multi_payloads_present) {
        avio_wl16(pb, payload_len);
    }
}
