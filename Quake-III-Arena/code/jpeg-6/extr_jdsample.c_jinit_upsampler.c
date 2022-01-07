
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct jpeg_upsampler {int dummy; } ;
typedef TYPE_3__* my_upsample_ptr ;
struct TYPE_11__ {int h_samp_factor; int DCT_scaled_size; int v_samp_factor; int downsampled_width; int component_needed; } ;
typedef TYPE_4__ jpeg_component_info ;
typedef TYPE_5__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef int boolean ;
typedef void* UINT8 ;
struct TYPE_12__ {int min_DCT_scaled_size; int num_components; int max_h_samp_factor; int max_v_samp_factor; scalar_t__ output_width; TYPE_2__* mem; TYPE_4__* comp_info; scalar_t__ do_fancy_upsampling; scalar_t__ CCIR601_sampling; struct jpeg_upsampler* upsample; } ;
struct TYPE_8__ {void* need_context_rows; int upsample; int start_pass; } ;
struct TYPE_10__ {int* rowgroup_height; int * color_buf; void** v_expand; void** h_expand; int * methods; TYPE_1__ pub; } ;
struct TYPE_9__ {int (* alloc_sarray ) (int ,int ,int ,int ) ;scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
typedef int JDIMENSION ;


 int ERREXIT (TYPE_5__*,int ) ;
 void* FALSE ;
 int JERR_CCIR601_NOTIMPL ;
 int JERR_FRACT_SAMPLE_NOTIMPL ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 void* TRUE ;
 int fullsize_upsample ;
 int h2v1_fancy_upsample ;
 int h2v1_upsample ;
 int h2v2_fancy_upsample ;
 int h2v2_upsample ;
 int int_upsample ;
 scalar_t__ jround_up (long,long) ;
 int my_upsampler ;
 int noop_upsample ;
 int sep_upsample ;
 int start_pass_upsample ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

void
jinit_upsampler (j_decompress_ptr cinfo)
{
  my_upsample_ptr upsample;
  int ci;
  jpeg_component_info * compptr;
  boolean need_buffer, do_fancy;
  int h_in_group, v_in_group, h_out_group, v_out_group;

  upsample = (my_upsample_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_upsampler));
  cinfo->upsample = (struct jpeg_upsampler *) upsample;
  upsample->pub.start_pass = start_pass_upsample;
  upsample->pub.upsample = sep_upsample;
  upsample->pub.need_context_rows = FALSE;

  if (cinfo->CCIR601_sampling)
    ERREXIT(cinfo, JERR_CCIR601_NOTIMPL);




  do_fancy = cinfo->do_fancy_upsampling && cinfo->min_DCT_scaled_size > 1;




  for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
       ci++, compptr++) {



    h_in_group = (compptr->h_samp_factor * compptr->DCT_scaled_size) /
   cinfo->min_DCT_scaled_size;
    v_in_group = (compptr->v_samp_factor * compptr->DCT_scaled_size) /
   cinfo->min_DCT_scaled_size;
    h_out_group = cinfo->max_h_samp_factor;
    v_out_group = cinfo->max_v_samp_factor;
    upsample->rowgroup_height[ci] = v_in_group;
    need_buffer = TRUE;
    if (! compptr->component_needed) {

      upsample->methods[ci] = noop_upsample;
      need_buffer = FALSE;
    } else if (h_in_group == h_out_group && v_in_group == v_out_group) {

      upsample->methods[ci] = fullsize_upsample;
      need_buffer = FALSE;
    } else if (h_in_group * 2 == h_out_group &&
        v_in_group == v_out_group) {

      if (do_fancy && compptr->downsampled_width > 2)
 upsample->methods[ci] = h2v1_fancy_upsample;
      else
 upsample->methods[ci] = h2v1_upsample;
    } else if (h_in_group * 2 == h_out_group &&
        v_in_group * 2 == v_out_group) {

      if (do_fancy && compptr->downsampled_width > 2) {
 upsample->methods[ci] = h2v2_fancy_upsample;
 upsample->pub.need_context_rows = TRUE;
      } else
 upsample->methods[ci] = h2v2_upsample;
    } else if ((h_out_group % h_in_group) == 0 &&
        (v_out_group % v_in_group) == 0) {

      upsample->methods[ci] = int_upsample;
      upsample->h_expand[ci] = (UINT8) (h_out_group / h_in_group);
      upsample->v_expand[ci] = (UINT8) (v_out_group / v_in_group);
    } else
      ERREXIT(cinfo, JERR_FRACT_SAMPLE_NOTIMPL);
    if (need_buffer) {
      upsample->color_buf[ci] = (*cinfo->mem->alloc_sarray)
 ((j_common_ptr) cinfo, JPOOL_IMAGE,
  (JDIMENSION) jround_up((long) cinfo->output_width,
    (long) cinfo->max_h_samp_factor),
  (JDIMENSION) cinfo->max_v_samp_factor);
    }
  }
}
