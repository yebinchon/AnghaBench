
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_3__* j_decompress_ptr ;
struct TYPE_13__ {int global_state; TYPE_2__* inputctl; TYPE_1__* src; } ;
struct TYPE_12__ {int (* consume_input ) (TYPE_3__*) ;int (* reset_input_controller ) (TYPE_3__*) ;} ;
struct TYPE_11__ {int (* init_source ) (TYPE_3__*) ;} ;
 int ERREXIT1 (TYPE_3__*,int ,int) ;
 int JERR_BAD_STATE ;
 int JPEG_REACHED_SOS ;
 int JPEG_SUSPENDED ;
 int default_decompress_parms (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

int
jpeg_consume_input (j_decompress_ptr cinfo)
{
  int retcode = JPEG_SUSPENDED;


  switch (cinfo->global_state) {
  case 129:

    (*cinfo->inputctl->reset_input_controller) (cinfo);

    (*cinfo->src->init_source) (cinfo);
    cinfo->global_state = 135;

  case 135:
    retcode = (*cinfo->inputctl->consume_input) (cinfo);
    if (retcode == JPEG_REACHED_SOS) {

      default_decompress_parms(cinfo);

      cinfo->global_state = 131;
    }
    break;
  case 131:

    retcode = JPEG_REACHED_SOS;
    break;
  case 134:
  case 133:
  case 130:
  case 132:
  case 137:
  case 136:
  case 128:
    retcode = (*cinfo->inputctl->consume_input) (cinfo);
    break;
  default:
    ERREXIT1(cinfo, JERR_BAD_STATE, cinfo->global_state);
  }
  return retcode;
}
