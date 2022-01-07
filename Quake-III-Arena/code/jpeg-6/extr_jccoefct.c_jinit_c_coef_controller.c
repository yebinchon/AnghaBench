
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct jpeg_c_coef_controller {int dummy; } ;
typedef TYPE_3__* my_coef_ptr ;
struct TYPE_11__ {scalar_t__ v_samp_factor; scalar_t__ height_in_blocks; scalar_t__ h_samp_factor; scalar_t__ width_in_blocks; } ;
typedef TYPE_4__ jpeg_component_info ;
typedef TYPE_5__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_12__ {int num_components; TYPE_2__* mem; TYPE_4__* comp_info; struct jpeg_c_coef_controller* coef; } ;
struct TYPE_8__ {int start_pass; } ;
struct TYPE_10__ {int ** whole_image; scalar_t__* MCU_buffer; TYPE_1__ pub; } ;
struct TYPE_9__ {scalar_t__ (* alloc_large ) (int ,int ,int) ;int * (* request_virt_barray ) (int ,int ,int ,int ,int ,int ) ;scalar_t__ (* alloc_small ) (int ,int ,int) ;} ;
typedef int JDIMENSION ;
typedef scalar_t__ JBLOCKROW ;


 int C_MAX_BLOCKS_IN_MCU ;
 int ERREXIT (TYPE_5__*,int ) ;
 int FALSE ;
 int JBLOCK ;
 int JERR_BAD_BUFFER_MODE ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 scalar_t__ jround_up (long,long) ;
 int my_coef_controller ;
 int start_pass_coef ;
 scalar_t__ stub1 (int ,int ,int) ;
 int * stub2 (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ stub3 (int ,int ,int) ;

void
jinit_c_coef_controller (j_compress_ptr cinfo, boolean need_full_buffer)
{
  my_coef_ptr coef;

  coef = (my_coef_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_coef_controller));
  cinfo->coef = (struct jpeg_c_coef_controller *) coef;
  coef->pub.start_pass = start_pass_coef;


  if (need_full_buffer) {
    ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);

  } else {

    JBLOCKROW buffer;
    int i;

    buffer = (JBLOCKROW)
      (*cinfo->mem->alloc_large) ((j_common_ptr) cinfo, JPOOL_IMAGE,
      C_MAX_BLOCKS_IN_MCU * SIZEOF(JBLOCK));
    for (i = 0; i < C_MAX_BLOCKS_IN_MCU; i++) {
      coef->MCU_buffer[i] = buffer + i;
    }
    coef->whole_image[0] = ((void*)0);
  }
}
