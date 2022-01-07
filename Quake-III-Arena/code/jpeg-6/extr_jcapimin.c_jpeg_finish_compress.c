
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_6__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_21__ {scalar_t__ global_state; scalar_t__ next_scanline; scalar_t__ image_height; scalar_t__ total_iMCU_rows; TYPE_5__* dest; TYPE_4__* marker; TYPE_3__* master; TYPE_2__* coef; TYPE_1__* progress; } ;
struct TYPE_20__ {int (* term_destination ) (TYPE_6__*) ;} ;
struct TYPE_19__ {int (* write_file_trailer ) (TYPE_6__*) ;} ;
struct TYPE_18__ {int (* finish_pass ) (TYPE_6__*) ;int (* prepare_for_pass ) (TYPE_6__*) ;int is_last_pass; } ;
struct TYPE_17__ {int (* compress_data ) (TYPE_6__*,int ) ;} ;
struct TYPE_16__ {long pass_counter; long pass_limit; int (* progress_monitor ) (int ) ;} ;
typedef int JSAMPIMAGE ;
typedef scalar_t__ JDIMENSION ;


 scalar_t__ CSTATE_RAW_OK ;
 scalar_t__ CSTATE_SCANNING ;
 scalar_t__ CSTATE_WRCOEFS ;
 int ERREXIT (TYPE_6__*,int ) ;
 int ERREXIT1 (TYPE_6__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int JERR_CANT_SUSPEND ;
 int JERR_TOO_LITTLE_DATA ;
 int jpeg_abort (int ) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*) ;
 int stub3 (int ) ;
 int stub4 (TYPE_6__*,int ) ;
 int stub5 (TYPE_6__*) ;
 int stub6 (TYPE_6__*) ;
 int stub7 (TYPE_6__*) ;

void
jpeg_finish_compress (j_compress_ptr cinfo)
{
  JDIMENSION iMCU_row;

  if (cinfo->global_state == CSTATE_SCANNING ||
      cinfo->global_state == CSTATE_RAW_OK) {

    if (cinfo->next_scanline < cinfo->image_height)
      ERREXIT(cinfo, JERR_TOO_LITTLE_DATA);
    (*cinfo->master->finish_pass) (cinfo);
  } else if (cinfo->global_state != CSTATE_WRCOEFS)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  while (! cinfo->master->is_last_pass) {
    (*cinfo->master->prepare_for_pass) (cinfo);
    for (iMCU_row = 0; iMCU_row < cinfo->total_iMCU_rows; iMCU_row++) {
      if (cinfo->progress != ((void*)0)) {
 cinfo->progress->pass_counter = (long) iMCU_row;
 cinfo->progress->pass_limit = (long) cinfo->total_iMCU_rows;
 (*cinfo->progress->progress_monitor) ((j_common_ptr) cinfo);
      }



      if (! (*cinfo->coef->compress_data) (cinfo, (JSAMPIMAGE) ((void*)0)))
 ERREXIT(cinfo, JERR_CANT_SUSPEND);
    }
    (*cinfo->master->finish_pass) (cinfo);
  }

  (*cinfo->marker->write_file_trailer) (cinfo);
  (*cinfo->dest->term_destination) (cinfo);

  jpeg_abort((j_common_ptr) cinfo);
}
