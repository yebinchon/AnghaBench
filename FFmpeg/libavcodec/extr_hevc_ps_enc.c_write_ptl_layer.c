
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frame_only_constraint_flag; int non_packed_constraint_flag; int interlaced_source_flag; int progressive_source_flag; int * profile_compatibility_flag; int profile_idc; int tier_flag; int profile_space; } ;
typedef int PutBitContext ;
typedef TYPE_1__ PTLCommon ;


 int put_bits (int *,int,int ) ;
 int put_bits32 (int *,int ) ;

__attribute__((used)) static void write_ptl_layer(PutBitContext *pb, PTLCommon *ptl)
{
    int i;

    put_bits(pb, 2, ptl->profile_space);
    put_bits(pb, 1, ptl->tier_flag);
    put_bits(pb, 5, ptl->profile_idc);
    for (i = 0; i < 32; i++)
        put_bits(pb, 1, ptl->profile_compatibility_flag[i]);
    put_bits(pb, 1, ptl->progressive_source_flag);
    put_bits(pb, 1, ptl->interlaced_source_flag);
    put_bits(pb, 1, ptl->non_packed_constraint_flag);
    put_bits(pb, 1, ptl->frame_only_constraint_flag);
    put_bits32(pb, 0);
    put_bits(pb, 12, 0);
}
