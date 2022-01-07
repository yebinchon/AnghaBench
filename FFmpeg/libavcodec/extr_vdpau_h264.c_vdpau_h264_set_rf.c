
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VdpVideoSurface ;
struct TYPE_5__ {int is_long_term; int top_is_reference; int bottom_is_reference; int frame_idx; void** field_order_cnt; int surface; } ;
typedef TYPE_1__ VdpReferenceFrameH264 ;
struct TYPE_6__ {int reference; int frame_num; int pic_id; scalar_t__ long_ref; int * field_poc; int f; } ;
typedef TYPE_2__ H264Picture ;


 int PICT_BOTTOM_FIELD ;
 int PICT_TOP_FIELD ;
 int ff_vdpau_get_surface_id (int ) ;
 void* h264_foc (int ) ;

__attribute__((used)) static void vdpau_h264_set_rf(VdpReferenceFrameH264 *rf, H264Picture *pic,
                              int pic_structure)
{
    VdpVideoSurface surface = ff_vdpau_get_surface_id(pic->f);

    if (pic_structure == 0)
        pic_structure = pic->reference;

    rf->surface = surface;
    rf->is_long_term = pic->reference && pic->long_ref;
    rf->top_is_reference = (pic_structure & PICT_TOP_FIELD) != 0;
    rf->bottom_is_reference = (pic_structure & PICT_BOTTOM_FIELD) != 0;
    rf->field_order_cnt[0] = h264_foc(pic->field_poc[0]);
    rf->field_order_cnt[1] = h264_foc(pic->field_poc[1]);
    rf->frame_idx = pic->long_ref ? pic->pic_id : pic->frame_num;
}
