
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int h_samp_factor; int v_samp_factor; int DCT_scaled_size; void* downsampled_height; void* downsampled_width; } ;
typedef TYPE_1__ jpeg_component_info ;
typedef TYPE_2__* j_decompress_ptr ;
struct TYPE_7__ {scalar_t__ global_state; int scale_num; int scale_denom; int min_DCT_scaled_size; int num_components; int max_h_samp_factor; int max_v_samp_factor; int out_color_space; int out_color_components; int output_components; int rec_outbuf_height; scalar_t__ quantize_colors; void* image_height; void* output_height; void* image_width; void* output_width; TYPE_1__* comp_info; } ;
typedef void* JDIMENSION ;


 int DCTSIZE ;
 scalar_t__ DSTATE_READY ;
 int ERREXIT1 (TYPE_2__*,int ,scalar_t__) ;





 int JERR_BAD_STATE ;
 int RGB_PIXELSIZE ;
 scalar_t__ jdiv_round_up (long,long) ;
 scalar_t__ use_merged_upsample (TYPE_2__*) ;

void
jpeg_calc_output_dimensions (j_decompress_ptr cinfo)

{






  if (cinfo->global_state != DSTATE_READY)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  cinfo->output_width = cinfo->image_width;
  cinfo->output_height = cinfo->image_height;
  switch (cinfo->out_color_space) {
  case 131:
    cinfo->out_color_components = 1;
    break;
  case 130:

    cinfo->out_color_components = RGB_PIXELSIZE;
    break;

  case 128:
    cinfo->out_color_components = 3;
    break;
  case 132:
  case 129:
    cinfo->out_color_components = 4;
    break;
  default:
    cinfo->out_color_components = cinfo->num_components;
    break;
  }
  cinfo->output_components = (cinfo->quantize_colors ? 1 :
         cinfo->out_color_components);


  if (use_merged_upsample(cinfo))
    cinfo->rec_outbuf_height = cinfo->max_v_samp_factor;
  else
    cinfo->rec_outbuf_height = 1;
}
