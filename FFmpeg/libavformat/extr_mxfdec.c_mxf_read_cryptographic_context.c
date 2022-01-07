
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int source_container_ul; } ;
typedef TYPE_1__ MXFCryptoContext ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ IS_KLV_KEY (int ,int ) ;
 int avio_read (int *,int ,int) ;
 int mxf_crypto_source_container_ul ;

__attribute__((used)) static int mxf_read_cryptographic_context(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFCryptoContext *cryptocontext = arg;
    if (size != 16)
        return AVERROR_INVALIDDATA;
    if (IS_KLV_KEY(uid, mxf_crypto_source_container_ul))
        avio_read(pb, cryptocontext->source_container_ul, 16);
    return 0;
}
