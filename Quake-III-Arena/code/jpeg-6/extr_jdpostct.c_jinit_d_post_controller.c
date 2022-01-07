
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jpeg_d_post_controller {int dummy; } ;
typedef TYPE_3__* my_post_ptr ;
typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_10__ {int output_width; int out_color_components; TYPE_2__* mem; scalar_t__ output_height; scalar_t__ max_v_samp_factor; scalar_t__ quantize_colors; struct jpeg_d_post_controller* post; } ;
struct TYPE_7__ {int start_pass; } ;
struct TYPE_9__ {scalar_t__ strip_height; int * buffer; int * whole_image; TYPE_1__ pub; } ;
struct TYPE_8__ {int * (* alloc_sarray ) (int ,int ,int,scalar_t__) ;int * (* request_virt_sarray ) (int ,int ,int ,int,scalar_t__,scalar_t__) ;scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
typedef scalar_t__ JDIMENSION ;


 int ERREXIT (TYPE_4__*,int ) ;
 int FALSE ;
 int JERR_BAD_BUFFER_MODE ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 scalar_t__ jround_up (long,long) ;
 int my_post_controller ;
 int start_pass_dpost ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int * stub2 (int ,int ,int ,int,scalar_t__,scalar_t__) ;
 int * stub3 (int ,int ,int,scalar_t__) ;

void
jinit_d_post_controller (j_decompress_ptr cinfo, boolean need_full_buffer)
{
  my_post_ptr post;

  post = (my_post_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_post_controller));
  cinfo->post = (struct jpeg_d_post_controller *) post;
  post->pub.start_pass = start_pass_dpost;
  post->whole_image = ((void*)0);
  post->buffer = ((void*)0);


  if (cinfo->quantize_colors) {




    post->strip_height = (JDIMENSION) cinfo->max_v_samp_factor;
    if (need_full_buffer) {
      ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);

    } else {

      post->buffer = (*cinfo->mem->alloc_sarray)
 ((j_common_ptr) cinfo, JPOOL_IMAGE,
  cinfo->output_width * cinfo->out_color_components,
  post->strip_height);
    }
  }
}
