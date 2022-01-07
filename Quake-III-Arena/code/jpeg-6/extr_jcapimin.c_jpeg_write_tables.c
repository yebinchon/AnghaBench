
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
struct TYPE_14__ {scalar_t__ global_state; TYPE_3__* dest; TYPE_1__* marker; TYPE_2__* err; } ;
struct TYPE_13__ {int (* term_destination ) (TYPE_4__*) ;int (* init_destination ) (TYPE_4__*) ;} ;
struct TYPE_12__ {int (* reset_error_mgr ) (int ) ;} ;
struct TYPE_11__ {int (* write_tables_only ) (TYPE_4__*) ;} ;


 scalar_t__ CSTATE_START ;
 int ERREXIT1 (TYPE_4__*,int ,scalar_t__) ;
 int JERR_BAD_STATE ;
 int jinit_marker_writer (TYPE_4__*) ;
 int jpeg_abort (int ) ;
 int stub1 (int ) ;
 int stub2 (TYPE_4__*) ;
 int stub3 (TYPE_4__*) ;
 int stub4 (TYPE_4__*) ;

void
jpeg_write_tables (j_compress_ptr cinfo)
{
  if (cinfo->global_state != CSTATE_START)
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);


  (*cinfo->err->reset_error_mgr) ((j_common_ptr) cinfo);
  (*cinfo->dest->init_destination) (cinfo);

  jinit_marker_writer(cinfo);

  (*cinfo->marker->write_tables_only) (cinfo);

  (*cinfo->dest->term_destination) (cinfo);

  jpeg_abort((j_common_ptr) cinfo);
}
