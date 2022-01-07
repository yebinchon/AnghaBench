
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int present; int arrangement_type; void* arrangement_repetition_period; void* quincunx_sampling_flag; void* current_frame_is_frame0_flag; void* content_interpretation_type; void* arrangement_cancel_flag; void* arrangement_id; } ;
typedef TYPE_1__ H264SEIFramePacking ;
typedef int GetBitContext ;


 void* get_bits (int *,int) ;
 void* get_bits1 (int *) ;
 void* get_ue_golomb_long (int *) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

__attribute__((used)) static int decode_frame_packing_arrangement(H264SEIFramePacking *h,
                                            GetBitContext *gb)
{
    h->arrangement_id = get_ue_golomb_long(gb);
    h->arrangement_cancel_flag = get_bits1(gb);
    h->present = !h->arrangement_cancel_flag;

    if (h->present) {
        h->arrangement_type = get_bits(gb, 7);
        h->quincunx_sampling_flag = get_bits1(gb);
        h->content_interpretation_type = get_bits(gb, 6);


        skip_bits(gb, 3);
        h->current_frame_is_frame0_flag = get_bits1(gb);

        skip_bits(gb, 2);

        if (!h->quincunx_sampling_flag && h->arrangement_type != 5)
            skip_bits(gb, 16);
        skip_bits(gb, 8);
        h->arrangement_repetition_period = get_ue_golomb_long(gb);
    }
    skip_bits1(gb);

    return 0;
}
