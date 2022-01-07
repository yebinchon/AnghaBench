
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jvirt_barray_ptr ;
typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_12__ {scalar_t__ global_state; TYPE_3__* coef; scalar_t__ total_iMCU_rows; TYPE_2__* progress; TYPE_1__* inputctl; } ;
struct TYPE_11__ {int * coef_arrays; } ;
struct TYPE_10__ {scalar_t__ pass_counter; scalar_t__ pass_limit; int (* progress_monitor ) (int ) ;} ;
struct TYPE_9__ {int (* consume_input ) (TYPE_4__*) ;} ;


 scalar_t__ DSTATE_RDCOEFS ;
 scalar_t__ DSTATE_READY ;
 scalar_t__ DSTATE_STOPPING ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JPEG_REACHED_EOI ;
 int JPEG_REACHED_SOS ;
 int JPEG_ROW_COMPLETED ;
 int JPEG_SUSPENDED ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*) ;
 int transdecode_master_selection (TYPE_4__*) ;

jvirt_barray_ptr *
jpeg_read_coefficients (j_decompress_ptr cinfo)
{
  if (cinfo->global_state == DSTATE_READY) {

    transdecode_master_selection(cinfo);
    cinfo->global_state = DSTATE_RDCOEFS;
  } else if (cinfo->global_state != DSTATE_RDCOEFS)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  for (;;) {
    int retcode;

    if (cinfo->progress != ((void*)0))
      (*cinfo->progress->progress_monitor) ((j_common_ptr) cinfo);

    retcode = (*cinfo->inputctl->consume_input) (cinfo);
    if (retcode == JPEG_SUSPENDED)
      return ((void*)0);
    if (retcode == JPEG_REACHED_EOI)
      break;

    if (cinfo->progress != ((void*)0) &&
 (retcode == JPEG_ROW_COMPLETED || retcode == JPEG_REACHED_SOS)) {
      if (++cinfo->progress->pass_counter >= cinfo->progress->pass_limit) {

 cinfo->progress->pass_limit += (long) cinfo->total_iMCU_rows;
      }
    }
  }

  cinfo->global_state = DSTATE_STOPPING;
  return cinfo->coef->coef_arrays;
}
