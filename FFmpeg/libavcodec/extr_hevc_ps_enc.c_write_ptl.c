
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ level_idc; } ;
struct TYPE_4__ {TYPE_2__* sub_layer_ptl; scalar_t__* sub_layer_level_present_flag; scalar_t__* sub_layer_profile_present_flag; TYPE_2__ general_ptl; } ;
typedef int PutBitContext ;
typedef TYPE_1__ PTL ;


 int put_bits (int *,int,scalar_t__) ;
 int write_ptl_layer (int *,TYPE_2__*) ;

__attribute__((used)) static void write_ptl(PutBitContext *pb, PTL *ptl, int max_num_sub_layers)
{
    int i;

    write_ptl_layer(pb, &ptl->general_ptl);
    put_bits(pb, 8, ptl->general_ptl.level_idc);

    for (i = 0; i < max_num_sub_layers - 1; i++) {
        put_bits(pb, 1, ptl->sub_layer_profile_present_flag[i]);
        put_bits(pb, 1, ptl->sub_layer_level_present_flag[i]);
    }

    if (max_num_sub_layers > 1)
        for (i = max_num_sub_layers - 1; i < 8; i++)
            put_bits(pb, 2, 0);

    for (i = 0; i < max_num_sub_layers - 1; i++) {
        if (ptl->sub_layer_profile_present_flag[i])
            write_ptl_layer(pb, &ptl->sub_layer_ptl[i]);
        if (ptl->sub_layer_level_present_flag[i])
            put_bits(pb, 8, ptl->sub_layer_ptl[i].level_idc);
    }
}
