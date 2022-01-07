
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_3__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_19__ {int num_scans; TYPE_2__* marker; TYPE_1__* mem; scalar_t__ optimize_coding; scalar_t__ progressive_mode; scalar_t__ arith_code; int raw_data_in; } ;
struct TYPE_18__ {int (* write_file_header ) (TYPE_3__*) ;} ;
struct TYPE_17__ {int (* realize_virt_arrays ) (int ) ;} ;


 int ERREXIT (TYPE_3__*,int ) ;
 int FALSE ;
 int JERR_ARITH_NOTIMPL ;
 int JERR_NOT_COMPILED ;
 int jinit_c_coef_controller (TYPE_3__*,int) ;
 int jinit_c_main_controller (TYPE_3__*,int ) ;
 int jinit_c_master_control (TYPE_3__*,int ) ;
 int jinit_c_prep_controller (TYPE_3__*,int ) ;
 int jinit_color_converter (TYPE_3__*) ;
 int jinit_downsampler (TYPE_3__*) ;
 int jinit_forward_dct (TYPE_3__*) ;
 int jinit_huff_encoder (TYPE_3__*) ;
 int jinit_marker_writer (TYPE_3__*) ;
 int jinit_phuff_encoder (TYPE_3__*) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;

void
jinit_compress_master (j_compress_ptr cinfo)
{

  jinit_c_master_control(cinfo, FALSE );


  if (! cinfo->raw_data_in) {
    jinit_color_converter(cinfo);
    jinit_downsampler(cinfo);
    jinit_c_prep_controller(cinfo, FALSE );
  }

  jinit_forward_dct(cinfo);

  if (cinfo->arith_code) {
    ERREXIT(cinfo, JERR_ARITH_NOTIMPL);
  } else {
    if (cinfo->progressive_mode) {



      ERREXIT(cinfo, JERR_NOT_COMPILED);

    } else
      jinit_huff_encoder(cinfo);
  }


  jinit_c_coef_controller(cinfo,
     (cinfo->num_scans > 1 || cinfo->optimize_coding));
  jinit_c_main_controller(cinfo, FALSE );

  jinit_marker_writer(cinfo);


  (*cinfo->mem->realize_virt_arrays) ((j_common_ptr) cinfo);





  (*cinfo->marker->write_file_header) (cinfo);
}
