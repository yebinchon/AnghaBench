
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; int arrangement_type; void* quincunx_subsampling; void* current_frame_is_frame0_flag; void* content_interpretation_type; } ;
typedef TYPE_1__ HEVCSEIFramePacking ;
typedef int GetBitContext ;


 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 int get_ue_golomb_long (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_nal_sei_frame_packing_arrangement(HEVCSEIFramePacking *s, GetBitContext *gb)
{
    get_ue_golomb_long(gb);
    s->present = !get_bits1(gb);

    if (s->present) {
        s->arrangement_type = get_bits(gb, 7);
        s->quincunx_subsampling = get_bits1(gb);
        s->content_interpretation_type = get_bits(gb, 6);


        skip_bits(gb, 3);
        s->current_frame_is_frame0_flag = get_bits1(gb);

        skip_bits(gb, 2);

        if (!s->quincunx_subsampling && s->arrangement_type != 5)
            skip_bits(gb, 16);
        skip_bits(gb, 8);
        skip_bits1(gb);
    }
    skip_bits1(gb);
    return 0;
}
