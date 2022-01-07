
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


struct jpeg_c_prep_controller {int dummy; } ;
typedef TYPE_4__* my_prep_ptr ;
struct TYPE_14__ {long h_samp_factor; scalar_t__ width_in_blocks; } ;
typedef TYPE_5__ jpeg_component_info ;
typedef TYPE_6__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_15__ {int num_components; long max_h_samp_factor; scalar_t__ max_v_samp_factor; TYPE_3__* mem; TYPE_5__* comp_info; TYPE_1__* downsample; struct jpeg_c_prep_controller* prep; } ;
struct TYPE_11__ {int pre_process_data; int start_pass; } ;
struct TYPE_13__ {int * color_buf; TYPE_2__ pub; } ;
struct TYPE_12__ {int (* alloc_sarray ) (int ,int ,int ,int ) ;scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
struct TYPE_10__ {scalar_t__ need_context_rows; } ;
typedef int JDIMENSION ;


 long DCTSIZE ;
 int ERREXIT (TYPE_6__*,int ) ;
 int JERR_BAD_BUFFER_MODE ;
 int JERR_NOT_COMPILED ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 int create_context_buffer (TYPE_6__*) ;
 int my_prep_controller ;
 int pre_process_context ;
 int pre_process_data ;
 int start_pass_prep ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

void
jinit_c_prep_controller (j_compress_ptr cinfo, boolean need_full_buffer)
{
  my_prep_ptr prep;
  int ci;
  jpeg_component_info * compptr;

  if (need_full_buffer)
    ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);

  prep = (my_prep_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_prep_controller));
  cinfo->prep = (struct jpeg_c_prep_controller *) prep;
  prep->pub.start_pass = start_pass_prep;





  if (cinfo->downsample->need_context_rows) {





    ERREXIT(cinfo, JERR_NOT_COMPILED);

  } else {

    prep->pub.pre_process_data = pre_process_data;
    for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
  ci++, compptr++) {
      prep->color_buf[ci] = (*cinfo->mem->alloc_sarray)
 ((j_common_ptr) cinfo, JPOOL_IMAGE,
  (JDIMENSION) (((long) compptr->width_in_blocks * DCTSIZE *
   cinfo->max_h_samp_factor) / compptr->h_samp_factor),
  (JDIMENSION) cinfo->max_v_samp_factor);
    }
  }
}
