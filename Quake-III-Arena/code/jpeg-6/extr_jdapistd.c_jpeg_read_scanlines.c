
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_10__ {scalar_t__ global_state; scalar_t__ output_scanline; scalar_t__ output_height; TYPE_2__* main; TYPE_1__* progress; } ;
struct TYPE_9__ {int (* process_data ) (TYPE_3__*,int ,scalar_t__*,scalar_t__) ;} ;
struct TYPE_8__ {long pass_counter; long pass_limit; int (* progress_monitor ) (int ) ;} ;
typedef int JSAMPARRAY ;
typedef scalar_t__ JDIMENSION ;


 scalar_t__ DSTATE_SCANNING ;
 int ERREXIT1 (TYPE_3__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JWRN_TOO_MUCH_DATA ;
 int WARNMS (TYPE_3__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*,int ,scalar_t__*,scalar_t__) ;

JDIMENSION
jpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines,
       JDIMENSION max_lines)
{
  JDIMENSION row_ctr;

  if (cinfo->global_state != DSTATE_SCANNING)
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


  row_ctr = 0;
  (*cinfo->main->process_data) (cinfo, scanlines, &row_ctr, max_lines);
  cinfo->output_scanline += row_ctr;
  return row_ctr;
}
