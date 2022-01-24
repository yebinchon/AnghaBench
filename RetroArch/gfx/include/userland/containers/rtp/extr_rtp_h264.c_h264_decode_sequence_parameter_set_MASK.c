#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {int width; int height; int x_offset; int y_offset; int visible_width; int visible_height; } ;
typedef  TYPE_3__ VC_CONTAINER_VIDEO_FORMAT_T ;
struct TYPE_9__ {TYPE_2__* format; } ;
typedef  TYPE_4__ VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;
struct TYPE_7__ {TYPE_1__* type; } ;
struct TYPE_6__ {TYPE_3__ video; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int CHROMA_FORMAT_RGB ; 
 int CHROMA_FORMAT_YUV_444_PLANAR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int MACROBLOCK_HEIGHT ; 
 int MACROBLOCK_WIDTH ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int* chroma_sub_height ; 
 int* chroma_sub_width ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      VC_CONTAINER_BITS_T *sprop)
{
   VC_CONTAINER_VIDEO_FORMAT_T *video = &track->format->type->video;
   uint32_t pic_order_cnt_type, chroma_format_idc;
   uint32_t pic_width_in_mbs_minus1, pic_height_in_map_units_minus1, frame_mbs_only_flag;
   uint32_t frame_crop_left_offset, frame_crop_right_offset, frame_crop_top_offset, frame_crop_bottom_offset;
   uint8_t profile_idc;

   /* This structure is defined by H.264 section 7.3.2.1.1 */
   profile_idc = FUNC2(p_ctx, sprop, 8, "profile_idc");
   FUNC3(p_ctx, sprop, 16, "Rest of profile_level_id");

   FUNC1(p_ctx, sprop, "seq_parameter_set_id");

   chroma_format_idc = CHROMA_FORMAT_RGB;
   if (profile_idc == 100 || profile_idc == 110 || profile_idc == 122 ||
         profile_idc == 244 || profile_idc == 44 || profile_idc == 83 ||
         profile_idc == 86 || profile_idc == 118 || profile_idc == 128)
   {
      chroma_format_idc = FUNC7(p_ctx, sprop);
      if (chroma_format_idc > CHROMA_FORMAT_YUV_444_PLANAR)
         goto error;
   }

   FUNC4(p_ctx, sprop, "log2_max_frame_num_minus4");
   pic_order_cnt_type = FUNC1(p_ctx, sprop, "pic_order_cnt_type");
   if (pic_order_cnt_type == 0)
   {
      FUNC4(p_ctx, sprop, "log2_max_pic_order_cnt_lsb_minus4");
   }
   else if (pic_order_cnt_type == 1)
   {
      uint32_t num_ref_frames_in_pic_order_cnt_cycle;
      uint32_t ii;

      FUNC3(p_ctx, sprop, 1, "delta_pic_order_always_zero_flag");
      FUNC4(p_ctx, sprop, "offset_for_non_ref_pic");
      FUNC4(p_ctx, sprop, "offset_for_top_to_bottom_field");
      num_ref_frames_in_pic_order_cnt_cycle = FUNC1(p_ctx, sprop, "num_ref_frames_in_pic_order_cnt_cycle");

      for (ii = 0; ii < num_ref_frames_in_pic_order_cnt_cycle; ii++)
         FUNC4(p_ctx, sprop, "offset_for_ref_frame");
   }

   FUNC4(p_ctx, sprop, "max_num_ref_frames");
   FUNC3(p_ctx, sprop, 1, "gaps_in_frame_num_value_allowed_flag");

   pic_width_in_mbs_minus1 = FUNC1(p_ctx, sprop, "pic_width_in_mbs_minus1");
   pic_height_in_map_units_minus1 = FUNC1(p_ctx, sprop, "pic_height_in_map_units_minus1");
   frame_mbs_only_flag = FUNC0(p_ctx, sprop, 1, "frame_mbs_only_flag");

   /* Can now set the overall width and height in pixels */
   video->width = (pic_width_in_mbs_minus1 + 1) * MACROBLOCK_WIDTH;
   video->height = (2 - frame_mbs_only_flag) * (pic_height_in_map_units_minus1 + 1) * MACROBLOCK_HEIGHT;

   if (!frame_mbs_only_flag)
      FUNC3(p_ctx, sprop, 1, "mb_adaptive_frame_field_flag");
   FUNC3(p_ctx, sprop, 1, "direct_8x8_inference_flag");

   if (FUNC0(p_ctx, sprop, 1, "frame_cropping_flag"))
   {
      /* Visible area is restricted */
      frame_crop_left_offset = FUNC1(p_ctx, sprop, "frame_crop_left_offset");
      frame_crop_right_offset = FUNC1(p_ctx, sprop, "frame_crop_right_offset");
      frame_crop_top_offset = FUNC1(p_ctx, sprop, "frame_crop_top_offset");
      frame_crop_bottom_offset = FUNC1(p_ctx, sprop, "frame_crop_bottom_offset");

      /* Need to adjust offsets for 4:2:0 and 4:2:2 chroma formats and field/frame flag */
      frame_crop_left_offset *= chroma_sub_width[chroma_format_idc];
      frame_crop_right_offset *= chroma_sub_width[chroma_format_idc];
      frame_crop_top_offset *= chroma_sub_height[chroma_format_idc] * (2 - frame_mbs_only_flag);
      frame_crop_bottom_offset *= chroma_sub_height[chroma_format_idc] * (2 - frame_mbs_only_flag);

      if ((frame_crop_left_offset + frame_crop_right_offset) >= video->width ||
            (frame_crop_top_offset + frame_crop_bottom_offset) >= video->height)
      {
         FUNC6(p_ctx, "H.264: frame crop offsets (%u, %u, %u, %u) larger than frame (%u, %u)",
               frame_crop_left_offset, frame_crop_right_offset, frame_crop_top_offset,
               frame_crop_bottom_offset, video->width, video->height);
         goto error;
      }

      video->x_offset = frame_crop_left_offset;
      video->y_offset = frame_crop_top_offset;
      video->visible_width = video->width - frame_crop_left_offset - frame_crop_right_offset;
      video->visible_height = video->height - frame_crop_top_offset - frame_crop_bottom_offset;
   } else {
      video->visible_width = video->width;
      video->visible_height = video->height;
   }

   /* vui_parameters may follow, but these will not be decoded */

   if (!FUNC5(p_ctx, sprop))
      goto error;

   return VC_CONTAINER_SUCCESS;

error:
   FUNC6(p_ctx, "H.264: sequence_parameter_set failed to decode");
   return VC_CONTAINER_ERROR_FORMAT_INVALID;
}