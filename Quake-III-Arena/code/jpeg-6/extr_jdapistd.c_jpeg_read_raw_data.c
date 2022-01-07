
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_11__ {scalar_t__ global_state; scalar_t__ output_scanline; scalar_t__ output_height; int max_v_samp_factor; int min_DCT_scaled_size; TYPE_2__* coef; TYPE_1__* progress; } ;
struct TYPE_10__ {int (* decompress_data ) (TYPE_3__*,int ) ;} ;
struct TYPE_9__ {long pass_counter; long pass_limit; int (* progress_monitor ) (int ) ;} ;
typedef int JSAMPIMAGE ;
typedef int JDIMENSION ;


 scalar_t__ DSTATE_RAW_OK ;
 int ERREXIT (TYPE_3__*,int ) ;
 int ERREXIT1 (TYPE_3__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JERR_BUFFER_SIZE ;
 int JWRN_TOO_MUCH_DATA ;
 int WARNMS (TYPE_3__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*,int ) ;

JDIMENSION
jpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data,
      JDIMENSION max_lines)
{
  JDIMENSION lines_per_iMCU_row;

  if (cinfo->global_state != DSTATE_RAW_OK)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  if (cinfo->output_scanline >= cinfo->output_height) {
    WARNMS(cinfo, JWRN_TOO_MUCH_DATA);
    return 0;
  }


  if (cinfo->progress != ((void*)0)) {
    cinfo->progress->pass_counter = (long) cinfo->output_scanline;
    cinfo->progress->pass_limit = (long) cinfo->output_height;
    (*cinfo->progress->progress_monitor) ((j_common_ptr) cinfo);
  }


  lines_per_iMCU_row = cinfo->max_v_samp_factor * cinfo->min_DCT_scaled_size;
  if (max_lines < lines_per_iMCU_row)
    ERREXIT(cinfo, JERR_BUFFER_SIZE);


  if (! (*cinfo->coef->decompress_data) (cinfo, data))
    return 0;


  cinfo->output_scanline += lines_per_iMCU_row;
  return lines_per_iMCU_row;
}
