
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
typedef scalar_t__ boolean ;
struct TYPE_14__ {scalar_t__ global_state; scalar_t__ raw_data_in; scalar_t__ next_scanline; TYPE_2__* master; TYPE_1__* dest; TYPE_3__* err; } ;
struct TYPE_13__ {int (* reset_error_mgr ) (int ) ;} ;
struct TYPE_12__ {int (* prepare_for_pass ) (TYPE_4__*) ;} ;
struct TYPE_11__ {int (* init_destination ) (TYPE_4__*) ;} ;


 scalar_t__ CSTATE_RAW_OK ;
 scalar_t__ CSTATE_SCANNING ;
 scalar_t__ CSTATE_START ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int FALSE ;
 int JERR_BAD_STATE ;
 int jinit_compress_master (TYPE_4__*) ;
 int jpeg_suppress_tables (TYPE_4__*,int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;

void
jpeg_start_compress (j_compress_ptr cinfo, boolean write_all_tables)
{
  if (cinfo->global_state != CSTATE_START)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);

  if (write_all_tables)
    jpeg_suppress_tables(cinfo, FALSE);


  (*cinfo->err->reset_error_mgr) ((j_common_ptr) cinfo);
  (*cinfo->dest->init_destination) (cinfo);

  jinit_compress_master(cinfo);

  (*cinfo->master->prepare_for_pass) (cinfo);



  cinfo->next_scanline = 0;
  cinfo->global_state = (cinfo->raw_data_in ? CSTATE_RAW_OK : CSTATE_SCANNING);
}
