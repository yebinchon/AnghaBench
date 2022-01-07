
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_14__ {scalar_t__ global_state; scalar_t__ next_scanline; scalar_t__ image_height; int max_v_samp_factor; TYPE_3__* coef; TYPE_2__* master; TYPE_1__* progress; } ;
struct TYPE_13__ {int (* compress_data ) (TYPE_4__*,int ) ;} ;
struct TYPE_12__ {int (* pass_startup ) (TYPE_4__*) ;scalar_t__ call_pass_startup; } ;
struct TYPE_11__ {long pass_counter; long pass_limit; int (* progress_monitor ) (int ) ;} ;
typedef int JSAMPIMAGE ;
typedef int JDIMENSION ;


 scalar_t__ CSTATE_RAW_OK ;
 int DCTSIZE ;
 int ERREXIT (TYPE_4__*,int ) ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JERR_BUFFER_SIZE ;
 int JWRN_TOO_MUCH_DATA ;
 int WARNMS (TYPE_4__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*,int ) ;

JDIMENSION
jpeg_write_raw_data (j_compress_ptr cinfo, JSAMPIMAGE data,
       JDIMENSION num_lines)
{
  JDIMENSION lines_per_iMCU_row;

  if (cinfo->global_state != CSTATE_RAW_OK)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  if (cinfo->next_scanline >= cinfo->image_height) {
    WARNMS(cinfo, JWRN_TOO_MUCH_DATA);
    return 0;
  }


  if (cinfo->progress != ((void*)0)) {
    cinfo->progress->pass_counter = (long) cinfo->next_scanline;
    cinfo->progress->pass_limit = (long) cinfo->image_height;
    (*cinfo->progress->progress_monitor) ((j_common_ptr) cinfo);
  }






  if (cinfo->master->call_pass_startup)
    (*cinfo->master->pass_startup) (cinfo);


  lines_per_iMCU_row = cinfo->max_v_samp_factor * DCTSIZE;
  if (num_lines < lines_per_iMCU_row)
    ERREXIT(cinfo, JERR_BUFFER_SIZE);


  if (! (*cinfo->coef->compress_data) (cinfo, data)) {

    return 0;
  }


  cinfo->next_scanline += lines_per_iMCU_row;
  return lines_per_iMCU_row;
}
