
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jvirt_barray_ptr ;
typedef TYPE_3__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_11__ {scalar_t__ global_state; scalar_t__ next_scanline; TYPE_2__* dest; TYPE_1__* err; } ;
struct TYPE_10__ {int (* init_destination ) (TYPE_3__*) ;} ;
struct TYPE_9__ {int (* reset_error_mgr ) (int ) ;} ;


 scalar_t__ CSTATE_START ;
 scalar_t__ CSTATE_WRCOEFS ;
 int ERREXIT1 (TYPE_3__*,int ,scalar_t__) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 int jpeg_suppress_tables (TYPE_3__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;
 int transencode_master_selection (TYPE_3__*,int *) ;

void
jpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays)
{
  if (cinfo->global_state != CSTATE_START)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  jpeg_suppress_tables(cinfo, FALSE);

  (*cinfo->err->reset_error_mgr) ((j_common_ptr) cinfo);
  (*cinfo->dest->init_destination) (cinfo);

  transencode_master_selection(cinfo, coef_arrays);

  cinfo->next_scanline = 0;
  cinfo->global_state = CSTATE_WRCOEFS;
}
