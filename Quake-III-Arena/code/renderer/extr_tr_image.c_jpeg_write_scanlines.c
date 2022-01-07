
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_13__ {scalar_t__ global_state; scalar_t__ next_scanline; scalar_t__ image_height; TYPE_3__* main; TYPE_2__* master; TYPE_1__* progress; } ;
struct TYPE_12__ {int (* process_data ) (TYPE_4__*,int ,scalar_t__*,scalar_t__) ;} ;
struct TYPE_11__ {int (* pass_startup ) (TYPE_4__*) ;scalar_t__ call_pass_startup; } ;
struct TYPE_10__ {long pass_counter; long pass_limit; int (* progress_monitor ) (int ) ;} ;
typedef int JSAMPARRAY ;
typedef scalar_t__ JDIMENSION ;


 scalar_t__ CSTATE_SCANNING ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JWRN_TOO_MUCH_DATA ;
 int WARNMS (TYPE_4__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*,int ,scalar_t__*,scalar_t__) ;

JDIMENSION
jpeg_write_scanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines,
        JDIMENSION num_lines)
{
  JDIMENSION row_ctr, rows_left;

  if (cinfo->global_state != CSTATE_SCANNING)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  if (cinfo->next_scanline >= cinfo->image_height)
    WARNMS(cinfo, JWRN_TOO_MUCH_DATA);


  if (cinfo->progress != ((void*)0)) {
    cinfo->progress->pass_counter = (long) cinfo->next_scanline;
    cinfo->progress->pass_limit = (long) cinfo->image_height;
    (*cinfo->progress->progress_monitor) ((j_common_ptr) cinfo);
  }






  if (cinfo->master->call_pass_startup)
    (*cinfo->master->pass_startup) (cinfo);


  rows_left = cinfo->image_height - cinfo->next_scanline;
  if (num_lines > rows_left)
    num_lines = rows_left;

  row_ctr = 0;
  (*cinfo->main->process_data) (cinfo, scanlines, &row_ctr, num_lines);
  cinfo->next_scanline += row_ctr;
  return row_ctr;
}
