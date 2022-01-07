
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int auxiliary_info_entries; int auxiliary_info_sizes; scalar_t__ use_subsamples; } ;
typedef TYPE_1__ MOVMuxCencContext ;
typedef int AVIOContext ;


 int AES_CTR_IV_SIZE ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,int ,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_cenc_write_saiz_tag(MOVMuxCencContext* ctx, AVIOContext *pb)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "saiz");
    avio_wb32(pb, 0);
    avio_w8(pb, ctx->use_subsamples ? 0 : AES_CTR_IV_SIZE);
    avio_wb32(pb, ctx->auxiliary_info_entries);
    if (ctx->use_subsamples) {
        avio_write(pb, ctx->auxiliary_info_sizes, ctx->auxiliary_info_entries);
    }
    return update_size(pb, pos);
}
