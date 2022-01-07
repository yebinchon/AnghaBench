
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct jpeg_downsampler {int dummy; } ;
typedef TYPE_3__* my_downsample_ptr ;
struct TYPE_12__ {int h_samp_factor; int v_samp_factor; } ;
typedef TYPE_4__ jpeg_component_info ;
typedef TYPE_5__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef void* boolean ;
struct TYPE_13__ {int num_components; int max_h_samp_factor; int max_v_samp_factor; scalar_t__ smoothing_factor; TYPE_4__* comp_info; scalar_t__ CCIR601_sampling; struct jpeg_downsampler* downsample; TYPE_1__* mem; } ;
struct TYPE_10__ {void* need_context_rows; int downsample; int start_pass; } ;
struct TYPE_11__ {int * methods; TYPE_2__ pub; } ;
struct TYPE_9__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int ERREXIT (TYPE_5__*,int ) ;
 void* FALSE ;
 int JERR_CCIR601_NOTIMPL ;
 int JERR_FRACT_SAMPLE_NOTIMPL ;
 int JPOOL_IMAGE ;
 int JTRC_SMOOTH_NOTIMPL ;
 int SIZEOF (int ) ;
 int TRACEMS (TYPE_5__*,int ,int ) ;
 void* TRUE ;
 int fullsize_downsample ;
 int fullsize_smooth_downsample ;
 int h2v1_downsample ;
 int h2v2_downsample ;
 int h2v2_smooth_downsample ;
 int int_downsample ;
 int my_downsampler ;
 int sep_downsample ;
 int start_pass_downsample ;
 scalar_t__ stub1 (int ,int ,int ) ;

void
jinit_downsampler (j_compress_ptr cinfo)
{
  my_downsample_ptr downsample;
  int ci;
  jpeg_component_info * compptr;
  boolean smoothok = TRUE;

  downsample = (my_downsample_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_downsampler));
  cinfo->downsample = (struct jpeg_downsampler *) downsample;
  downsample->pub.start_pass = start_pass_downsample;
  downsample->pub.downsample = sep_downsample;
  downsample->pub.need_context_rows = FALSE;

  if (cinfo->CCIR601_sampling)
    ERREXIT(cinfo, JERR_CCIR601_NOTIMPL);


  for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
       ci++, compptr++) {
    if (compptr->h_samp_factor == cinfo->max_h_samp_factor &&
 compptr->v_samp_factor == cinfo->max_v_samp_factor) {






 downsample->methods[ci] = fullsize_downsample;
    } else if (compptr->h_samp_factor * 2 == cinfo->max_h_samp_factor &&
        compptr->v_samp_factor == cinfo->max_v_samp_factor) {
      smoothok = FALSE;
      downsample->methods[ci] = h2v1_downsample;
    } else if (compptr->h_samp_factor * 2 == cinfo->max_h_samp_factor &&
        compptr->v_samp_factor * 2 == cinfo->max_v_samp_factor) {






 downsample->methods[ci] = h2v2_downsample;
    } else if ((cinfo->max_h_samp_factor % compptr->h_samp_factor) == 0 &&
        (cinfo->max_v_samp_factor % compptr->v_samp_factor) == 0) {
      smoothok = FALSE;
      downsample->methods[ci] = int_downsample;
    } else
      ERREXIT(cinfo, JERR_FRACT_SAMPLE_NOTIMPL);
  }





}
