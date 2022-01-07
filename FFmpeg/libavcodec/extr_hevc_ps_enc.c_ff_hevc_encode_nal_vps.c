
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int vps_max_layers; int vps_max_sub_layers; int vps_temporal_id_nesting_flag; int vps_sub_layer_ordering_info_present_flag; int* vps_max_dec_pic_buffering; int* vps_num_reorder_pics; int* vps_max_latency_increase; int vps_max_layer_id; int vps_num_layer_sets; int vps_timing_info_present_flag; int vps_poc_proportional_to_timing_flag; int vps_num_ticks_poc_diff_one; int vps_num_hrd_parameters; int vps_time_scale; int vps_num_units_in_tick; int ptl; } ;
typedef int PutBitContext ;
typedef TYPE_1__ HEVCVPS ;


 int AVERROR_PATCHWELCOME ;
 int avpriv_align_put_bits (int *) ;
 int avpriv_report_missing_feature (int *,char*) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int) ;
 int put_bits (int *,int,int) ;
 int put_bits32 (int *,int ) ;
 int put_bits_count (int *) ;
 int set_ue_golomb (int *,int) ;
 int write_ptl (int *,int *,int) ;

int ff_hevc_encode_nal_vps(HEVCVPS *vps, unsigned int id,
                           uint8_t *buf, int buf_size)
{
    PutBitContext pb;
    int i, data_size;

    init_put_bits(&pb, buf, buf_size);
    put_bits(&pb, 4, id);
    put_bits(&pb, 2, 3);
    put_bits(&pb, 6, vps->vps_max_layers - 1);
    put_bits(&pb, 3, vps->vps_max_sub_layers - 1);
    put_bits(&pb, 1, vps->vps_temporal_id_nesting_flag);
    put_bits(&pb, 16, 0xffff);

    write_ptl(&pb, &vps->ptl, vps->vps_max_sub_layers);

    put_bits(&pb, 1, vps->vps_sub_layer_ordering_info_present_flag);
    for (i = vps->vps_sub_layer_ordering_info_present_flag ? 0 : vps->vps_max_layers - 1;
         i < vps->vps_max_sub_layers; i++) {
        set_ue_golomb(&pb, vps->vps_max_dec_pic_buffering[i] - 1);
        set_ue_golomb(&pb, vps->vps_num_reorder_pics[i]);
        set_ue_golomb(&pb, vps->vps_max_latency_increase[i] + 1);
    }

    put_bits(&pb, 6, vps->vps_max_layer_id);
    set_ue_golomb(&pb, vps->vps_num_layer_sets - 1);

    if (vps->vps_num_layer_sets > 1) {
        avpriv_report_missing_feature(((void*)0), "Writing layer_id_included_flag");
        return AVERROR_PATCHWELCOME;
    }

    put_bits(&pb, 1, vps->vps_timing_info_present_flag);
    if (vps->vps_timing_info_present_flag) {
        put_bits32(&pb, vps->vps_num_units_in_tick);
        put_bits32(&pb, vps->vps_time_scale);
        put_bits(&pb, 1, vps->vps_poc_proportional_to_timing_flag);
        if (vps->vps_poc_proportional_to_timing_flag)
            set_ue_golomb(&pb, vps->vps_num_ticks_poc_diff_one - 1);

        set_ue_golomb(&pb, vps->vps_num_hrd_parameters);
        if (vps->vps_num_hrd_parameters) {
            avpriv_report_missing_feature(((void*)0), "Writing HRD parameters");
            return AVERROR_PATCHWELCOME;
        }
    }

    put_bits(&pb, 1, 0);

    put_bits(&pb, 1, 1);
    avpriv_align_put_bits(&pb);

    data_size = put_bits_count(&pb) / 8;
    flush_put_bits(&pb);

    return data_size;
}
