
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct jpeg_d_main_controller {int dummy; } ;
typedef TYPE_4__* my_main_ptr ;
struct TYPE_14__ {int v_samp_factor; int DCT_scaled_size; int width_in_blocks; } ;
typedef TYPE_5__ jpeg_component_info ;
typedef TYPE_6__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_15__ {int min_DCT_scaled_size; int num_components; TYPE_3__* mem; TYPE_5__* comp_info; TYPE_2__* upsample; struct jpeg_d_main_controller* main; } ;
struct TYPE_10__ {int start_pass; } ;
struct TYPE_13__ {int * buffer; TYPE_1__ pub; } ;
struct TYPE_12__ {int (* alloc_sarray ) (int ,int ,int,int ) ;scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
struct TYPE_11__ {scalar_t__ need_context_rows; } ;
typedef int JDIMENSION ;


 int ERREXIT (TYPE_6__*,int ) ;
 int JERR_BAD_BUFFER_MODE ;
 int JERR_NOTIMPL ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 int alloc_funny_pointers (TYPE_6__*) ;
 int my_main_controller ;
 int start_pass_main ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int,int ) ;

void
jinit_d_main_controller (j_decompress_ptr cinfo, boolean need_full_buffer)
{

  my_main_ptr jmain;
  int ci, rgroup, ngroups;
  jpeg_component_info *compptr;

  jmain = (my_main_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_main_controller));
  cinfo->main = (struct jpeg_d_main_controller *) jmain;
  jmain->pub.start_pass = start_pass_main;

  if (need_full_buffer)
    ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);




  if (cinfo->upsample->need_context_rows) {
    if (cinfo->min_DCT_scaled_size < 2)
      ERREXIT(cinfo, JERR_NOTIMPL);
    alloc_funny_pointers(cinfo);
    ngroups = cinfo->min_DCT_scaled_size + 2;
  } else {
    ngroups = cinfo->min_DCT_scaled_size;
  }

  for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
       ci++, compptr++) {
    rgroup = (compptr->v_samp_factor * compptr->DCT_scaled_size) /
      cinfo->min_DCT_scaled_size;
    jmain->buffer[ci] = (*cinfo->mem->alloc_sarray)
   ((j_common_ptr) cinfo, JPOOL_IMAGE,
    compptr->width_in_blocks * compptr->DCT_scaled_size,
    (JDIMENSION) (rgroup * ngroups));
  }
}
