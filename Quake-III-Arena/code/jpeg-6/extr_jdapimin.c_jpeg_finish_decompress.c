
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef int boolean ;
struct TYPE_14__ {scalar_t__ global_state; scalar_t__ output_scanline; scalar_t__ output_height; TYPE_3__* src; TYPE_2__* inputctl; TYPE_1__* master; int buffered_image; } ;
struct TYPE_13__ {int (* term_source ) (TYPE_4__*) ;} ;
struct TYPE_12__ {scalar_t__ (* consume_input ) (TYPE_4__*) ;int eoi_reached; } ;
struct TYPE_11__ {int (* finish_output_pass ) (TYPE_4__*) ;} ;


 scalar_t__ DSTATE_BUFIMAGE ;
 scalar_t__ DSTATE_RAW_OK ;
 scalar_t__ DSTATE_SCANNING ;
 scalar_t__ DSTATE_STOPPING ;
 int ERREXIT (TYPE_4__*,int ) ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 int JERR_TOO_LITTLE_DATA ;
 scalar_t__ JPEG_SUSPENDED ;
 int TRUE ;
 int jpeg_abort (int ) ;
 int stub1 (TYPE_4__*) ;
 scalar_t__ stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;

boolean
jpeg_finish_decompress (j_decompress_ptr cinfo)
{
  if ((cinfo->global_state == DSTATE_SCANNING ||
       cinfo->global_state == DSTATE_RAW_OK) && ! cinfo->buffered_image) {

    if (cinfo->output_scanline < cinfo->output_height)
      ERREXIT(cinfo, JERR_TOO_LITTLE_DATA);
    (*cinfo->master->finish_output_pass) (cinfo);
    cinfo->global_state = DSTATE_STOPPING;
  } else if (cinfo->global_state == DSTATE_BUFIMAGE) {

    cinfo->global_state = DSTATE_STOPPING;
  } else if (cinfo->global_state != DSTATE_STOPPING) {

    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  }

  while (! cinfo->inputctl->eoi_reached) {
    if ((*cinfo->inputctl->consume_input) (cinfo) == JPEG_SUSPENDED)
      return FALSE;
  }

  (*cinfo->src->term_source) (cinfo);

  jpeg_abort((j_common_ptr) cinfo);
  return TRUE;
}
