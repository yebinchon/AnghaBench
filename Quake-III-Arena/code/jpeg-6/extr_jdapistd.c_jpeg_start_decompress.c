
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef int boolean ;
struct TYPE_12__ {scalar_t__ global_state; int input_scan_number; int output_scan_number; scalar_t__ total_iMCU_rows; TYPE_2__* progress; TYPE_1__* inputctl; scalar_t__ buffered_image; } ;
struct TYPE_11__ {scalar_t__ pass_counter; scalar_t__ pass_limit; int (* progress_monitor ) (int ) ;} ;
struct TYPE_10__ {int (* consume_input ) (TYPE_3__*) ;scalar_t__ has_multiple_scans; } ;


 scalar_t__ DSTATE_BUFIMAGE ;
 scalar_t__ DSTATE_PRELOAD ;
 scalar_t__ DSTATE_PRESCAN ;
 scalar_t__ DSTATE_READY ;
 int ERREXIT (TYPE_3__*,int ) ;
 int ERREXIT1 (TYPE_3__*,int ,scalar_t__) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 int JERR_NOT_COMPILED ;
 int JPEG_REACHED_EOI ;
 int JPEG_REACHED_SOS ;
 int JPEG_ROW_COMPLETED ;
 int JPEG_SUSPENDED ;
 int TRUE ;
 int jinit_master_decompress (TYPE_3__*) ;
 int output_pass_setup (TYPE_3__*) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;

boolean
jpeg_start_decompress (j_decompress_ptr cinfo)
{
  if (cinfo->global_state == DSTATE_READY) {

    jinit_master_decompress(cinfo);
    if (cinfo->buffered_image) {

      cinfo->global_state = DSTATE_BUFIMAGE;
      return TRUE;
    }
    cinfo->global_state = DSTATE_PRELOAD;
  }
  if (cinfo->global_state == DSTATE_PRELOAD) {

    if (cinfo->inputctl->has_multiple_scans) {
      ERREXIT(cinfo, JERR_NOT_COMPILED);

    }
    cinfo->output_scan_number = cinfo->input_scan_number;
  } else if (cinfo->global_state != DSTATE_PRESCAN)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  return output_pass_setup(cinfo);
}
