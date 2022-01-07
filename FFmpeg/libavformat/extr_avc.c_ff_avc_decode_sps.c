
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int num; int den; } ;
struct TYPE_6__ {int profile_idc; int constraint_set_flags; int id; int chroma_format_idc; int bit_depth_luma; int frame_mbs_only_flag; TYPE_3__ sar; void* level_idc; } ;
typedef TYPE_1__ H264SequenceParameterSet ;
typedef int GetBitContext ;


 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_free (int *) ;
 TYPE_1__* av_mallocz (int) ;
 TYPE_3__* avc_sample_aspect_ratio ;
 int * ff_nal_unit_extract_rbsp (int const*,int,int*,int ) ;
 void* get_bits (int *,int) ;
 int get_bits1 (int *) ;
 int get_se_golomb (int *) ;
 int get_ue_golomb (int *) ;
 int init_get_bits8 (int *,int *,int) ;
 int skip_bits (int *,int) ;
 int skip_bits1 (int *) ;

H264SequenceParameterSet *ff_avc_decode_sps(const uint8_t *buf, int buf_size)
{
    int i, j, ret, rbsp_size, aspect_ratio_idc, pic_order_cnt_type;
    int num_ref_frames_in_pic_order_cnt_cycle;
    int delta_scale, lastScale = 8, nextScale = 8;
    int sizeOfScalingList;
    H264SequenceParameterSet *sps = ((void*)0);
    GetBitContext gb;
    uint8_t *rbsp_buf;

    rbsp_buf = ff_nal_unit_extract_rbsp(buf, buf_size, &rbsp_size, 0);
    if (!rbsp_buf)
        return ((void*)0);

    ret = init_get_bits8(&gb, rbsp_buf, rbsp_size);
    if (ret < 0)
        goto end;

    sps = av_mallocz(sizeof(*sps));
    if (!sps)
        goto end;

    sps->profile_idc = get_bits(&gb, 8);
    sps->constraint_set_flags |= get_bits1(&gb) << 0;
    sps->constraint_set_flags |= get_bits1(&gb) << 1;
    sps->constraint_set_flags |= get_bits1(&gb) << 2;
    sps->constraint_set_flags |= get_bits1(&gb) << 3;
    sps->constraint_set_flags |= get_bits1(&gb) << 4;
    sps->constraint_set_flags |= get_bits1(&gb) << 5;
    skip_bits(&gb, 2);
    sps->level_idc = get_bits(&gb, 8);
    sps->id = get_ue_golomb(&gb);

    if (sps->profile_idc == 100 || sps->profile_idc == 110 ||
        sps->profile_idc == 122 || sps->profile_idc == 244 || sps->profile_idc == 44 ||
        sps->profile_idc == 83 || sps->profile_idc == 86 || sps->profile_idc == 118 ||
        sps->profile_idc == 128 || sps->profile_idc == 138 || sps->profile_idc == 139 ||
        sps->profile_idc == 134) {
        sps->chroma_format_idc = get_ue_golomb(&gb);
        if (sps->chroma_format_idc == 3) {
            skip_bits1(&gb);
        }
        sps->bit_depth_luma = get_ue_golomb(&gb) + 8;
        get_ue_golomb(&gb);
        skip_bits1(&gb);
        if (get_bits1(&gb)) {
            for (i = 0; i < ((sps->chroma_format_idc != 3) ? 8 : 12); i++) {
                if (!get_bits1(&gb))
                    continue;
                lastScale = 8;
                nextScale = 8;
                sizeOfScalingList = i < 6 ? 16 : 64;
                for (j = 0; j < sizeOfScalingList; j++) {
                    if (nextScale != 0) {
                        delta_scale = get_se_golomb(&gb);
                        nextScale = (lastScale + delta_scale) & 0xff;
                    }
                    lastScale = nextScale == 0 ? lastScale : nextScale;
                }
            }
        }
    } else {
        sps->chroma_format_idc = 1;
        sps->bit_depth_luma = 8;
    }

    get_ue_golomb(&gb);
    pic_order_cnt_type = get_ue_golomb(&gb);

    if (pic_order_cnt_type == 0) {
        get_ue_golomb(&gb);
    } else if (pic_order_cnt_type == 1) {
        skip_bits1(&gb);
        get_se_golomb(&gb);
        get_se_golomb(&gb);
        num_ref_frames_in_pic_order_cnt_cycle = get_ue_golomb(&gb);
        for (i = 0; i < num_ref_frames_in_pic_order_cnt_cycle; i++)
            get_se_golomb(&gb);
    }

    get_ue_golomb(&gb);
    skip_bits1(&gb);
    get_ue_golomb(&gb);
    get_ue_golomb(&gb);

    sps->frame_mbs_only_flag = get_bits1(&gb);
    if (!sps->frame_mbs_only_flag)
        skip_bits1(&gb);

    skip_bits1(&gb);

    if (get_bits1(&gb)) {
        get_ue_golomb(&gb);
        get_ue_golomb(&gb);
        get_ue_golomb(&gb);
        get_ue_golomb(&gb);
    }

    if (get_bits1(&gb)) {
        if (get_bits1(&gb)) {
            aspect_ratio_idc = get_bits(&gb, 8);
            if (aspect_ratio_idc == 0xff) {
                sps->sar.num = get_bits(&gb, 16);
                sps->sar.den = get_bits(&gb, 16);
            } else if (aspect_ratio_idc < FF_ARRAY_ELEMS(avc_sample_aspect_ratio)) {
                sps->sar = avc_sample_aspect_ratio[aspect_ratio_idc];
            }
        }
    }

    if (!sps->sar.den) {
        sps->sar.num = 1;
        sps->sar.den = 1;
    }

 end:
    av_free(rbsp_buf);
    return sps;
}
