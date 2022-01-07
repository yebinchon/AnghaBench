
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_T ;
typedef int VC_CONTAINER_BITS_T ;


 scalar_t__ BITS_READ_U32 (int *,int *,int,char*) ;
 int BITS_READ_U32_EXP (int *,int *,char*) ;
 int BITS_SKIP (int *,int *,int,char*) ;
 int BITS_SKIP_EXP (int *,int *,char*) ;
 int CHROMA_FORMAT_YUV_444_PLANAR ;
 int h264_skip_scaling_list (int *,int *,int) ;

__attribute__((used)) static uint32_t h264_get_chroma_format(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_BITS_T *sprop)
{
   uint32_t chroma_format_idc;

   chroma_format_idc = BITS_READ_U32_EXP(p_ctx, sprop, "chroma_format_idc");
   if (chroma_format_idc == 3 && BITS_READ_U32(p_ctx, sprop, 1, "separate_colour_plane_flag"))
      chroma_format_idc = CHROMA_FORMAT_YUV_444_PLANAR;

   BITS_SKIP_EXP(p_ctx, sprop, "bit_depth_luma_minus8");
   BITS_SKIP_EXP(p_ctx, sprop, "bit_depth_chroma_minus8");
   BITS_SKIP(p_ctx, sprop, 1, "qpprime_y_zero_transform_bypass_flag");

   if (BITS_READ_U32(p_ctx, sprop, 1, "seq_scaling_matrix_present_flag"))
   {
      uint32_t scaling_lists = (chroma_format_idc == 3) ? 12 : 8;
      uint32_t ii;

      for (ii = 0; ii < scaling_lists; ii++)
      {
         if (BITS_READ_U32(p_ctx, sprop, 1, "seq_scaling_list_present_flag"))
            h264_skip_scaling_list(p_ctx, sprop, (ii < 6) ? 16 : 64);
      }
   }

   return chroma_format_idc;
}
