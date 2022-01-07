
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int auxiliary_info_entries; int auxiliary_info_size; int auxiliary_info; scalar_t__ use_subsamples; } ;
typedef TYPE_1__ MOVMuxCencContext ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_write (int *,int ,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_cenc_write_senc_tag(MOVMuxCencContext* ctx, AVIOContext *pb,
                                   int64_t* auxiliary_info_offset)
{
    int64_t pos = avio_tell(pb);

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "senc");
    avio_wb32(pb, ctx->use_subsamples ? 0x02 : 0);
    avio_wb32(pb, ctx->auxiliary_info_entries);
    *auxiliary_info_offset = avio_tell(pb);
    avio_write(pb, ctx->auxiliary_info, ctx->auxiliary_info_size);
    return update_size(pb, pos);
}
