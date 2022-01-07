
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jpeg_input_controller {int dummy; } ;
typedef TYPE_3__* my_inputctl_ptr ;
typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_9__ {struct jpeg_input_controller* inputctl; TYPE_2__* mem; } ;
struct TYPE_6__ {void* eoi_reached; void* has_multiple_scans; int finish_input_pass; int start_input_pass; int reset_input_controller; int consume_input; } ;
struct TYPE_8__ {int inheaders; TYPE_1__ pub; } ;
struct TYPE_7__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 void* FALSE ;
 int JPOOL_PERMANENT ;
 int SIZEOF (int ) ;
 int TRUE ;
 int consume_markers ;
 int finish_input_pass ;
 int my_input_controller ;
 int reset_input_controller ;
 int start_input_pass ;
 scalar_t__ stub1 (int ,int ,int ) ;

void
jinit_input_controller (j_decompress_ptr cinfo)
{
  my_inputctl_ptr inputctl;


  inputctl = (my_inputctl_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_PERMANENT,
    SIZEOF(my_input_controller));
  cinfo->inputctl = (struct jpeg_input_controller *) inputctl;

  inputctl->pub.consume_input = consume_markers;
  inputctl->pub.reset_input_controller = reset_input_controller;
  inputctl->pub.start_input_pass = start_input_pass;
  inputctl->pub.finish_input_pass = finish_input_pass;



  inputctl->pub.has_multiple_scans = FALSE;
  inputctl->pub.eoi_reached = FALSE;
  inputctl->inheaders = TRUE;
}
