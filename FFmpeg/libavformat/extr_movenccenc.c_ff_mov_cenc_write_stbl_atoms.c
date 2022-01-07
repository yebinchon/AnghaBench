
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int MOVMuxCencContext ;
typedef int AVIOContext ;


 int mov_cenc_write_saio_tag (int *,int ) ;
 int mov_cenc_write_saiz_tag (int *,int *) ;
 int mov_cenc_write_senc_tag (int *,int *,int *) ;

void ff_mov_cenc_write_stbl_atoms(MOVMuxCencContext* ctx, AVIOContext *pb)
{
    int64_t auxiliary_info_offset;

    mov_cenc_write_senc_tag(ctx, pb, &auxiliary_info_offset);
    mov_cenc_write_saio_tag(pb, auxiliary_info_offset);
    mov_cenc_write_saiz_tag(ctx, pb);
}
