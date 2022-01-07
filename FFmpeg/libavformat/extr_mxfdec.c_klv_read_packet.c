
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ next_klv; scalar_t__ length; scalar_t__ key; scalar_t__ offset; } ;
typedef TYPE_1__ KLVPacket ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ INT64_MAX ;
 int avio_read (int *,scalar_t__,int) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ klv_decode_ber_length (int *) ;
 int memcpy (scalar_t__,int ,int) ;
 int mxf_klv_key ;
 int mxf_read_sync (int *,int ,int) ;

__attribute__((used)) static int klv_read_packet(KLVPacket *klv, AVIOContext *pb)
{
    int64_t length, pos;
    if (!mxf_read_sync(pb, mxf_klv_key, 4))
        return AVERROR_INVALIDDATA;
    klv->offset = avio_tell(pb) - 4;
    memcpy(klv->key, mxf_klv_key, 4);
    avio_read(pb, klv->key + 4, 12);
    length = klv_decode_ber_length(pb);
    if (length < 0)
        return length;
    klv->length = length;
    pos = avio_tell(pb);
    if (pos > INT64_MAX - length)
        return AVERROR_INVALIDDATA;
    klv->next_klv = pos + length;
    return 0;
}
