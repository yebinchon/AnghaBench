
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetBitContext ;


 int get_ue_golomb_long (int *) ;

__attribute__((used)) static void skip_sub_layer_ordering_info(GetBitContext *gb)
{
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
    get_ue_golomb_long(gb);
}
