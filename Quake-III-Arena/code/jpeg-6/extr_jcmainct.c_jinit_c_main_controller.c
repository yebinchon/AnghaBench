
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct jpeg_c_main_controller {int dummy; } ;
typedef TYPE_3__* my_main_ptr ;
struct TYPE_11__ {int width_in_blocks; int v_samp_factor; scalar_t__ height_in_blocks; } ;
typedef TYPE_4__ jpeg_component_info ;
typedef TYPE_5__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_12__ {int num_components; TYPE_2__* mem; TYPE_4__* comp_info; scalar_t__ raw_data_in; struct jpeg_c_main_controller* main; } ;
struct TYPE_8__ {int start_pass; } ;
struct TYPE_10__ {int * buffer; int ** whole_image; TYPE_1__ pub; } ;
struct TYPE_9__ {int (* alloc_sarray ) (int ,int ,int,int) ;int * (* request_virt_sarray ) (int ,int ,int ,int,int,int) ;scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
typedef int JDIMENSION ;


 int DCTSIZE ;
 int ERREXIT (TYPE_5__*,int ) ;
 int FALSE ;
 int JERR_BAD_BUFFER_MODE ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 scalar_t__ jround_up (long,long) ;
 int my_main_controller ;
 int start_pass_main ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int * stub2 (int ,int ,int ,int,int,int) ;
 int stub3 (int ,int ,int,int) ;

void
jinit_c_main_controller (j_compress_ptr cinfo, boolean need_full_buffer)
{

  my_main_ptr jmain;
  int ci;
  jpeg_component_info *compptr;

  jmain = (my_main_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_main_controller));
  cinfo->main = (struct jpeg_c_main_controller *) jmain;
  jmain->pub.start_pass = start_pass_main;


  if (cinfo->raw_data_in)
    return;




  if (need_full_buffer) {
    ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);

  } else {




    for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
  ci++, compptr++) {
      jmain->buffer[ci] = (*cinfo->mem->alloc_sarray)
 ((j_common_ptr) cinfo, JPOOL_IMAGE,
  compptr->width_in_blocks * DCTSIZE,
  (JDIMENSION) (compptr->v_samp_factor * DCTSIZE));
    }
  }
}
