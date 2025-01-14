
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ccv_cnnp_model_io_s {int dummy; } ;
typedef int ccv_nnc_tensor_symbol_t ;
struct TYPE_6__ {int output_size; int * outputs; int io; int * isa; } ;
typedef TYPE_1__ ccv_cnnp_model_t ;
typedef TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_7__ {int * outputs; TYPE_1__* model; scalar_t__ outgoings; scalar_t__ incomings; scalar_t__ visit; } ;


 scalar_t__ cccalloc (int,int) ;
 TYPE_2__* ccmalloc (int) ;
 int ccv_array_new (int,int,int ) ;
 int ccv_array_push (int ,TYPE_2__**) ;
 int ccv_cnnp_input_isa ;

ccv_cnnp_model_io_t ccv_cnnp_input(void)
{
 ccv_cnnp_model_t* const input = (ccv_cnnp_model_t*)cccalloc(1, sizeof(ccv_cnnp_model_t) + sizeof(ccv_nnc_tensor_symbol_t));
 input->isa = &ccv_cnnp_input_isa;
 input->io = ccv_array_new(sizeof(ccv_cnnp_model_io_t), 1, 0);
 ccv_cnnp_model_io_t input_io = ccmalloc(sizeof(struct ccv_cnnp_model_io_s) + sizeof(ccv_nnc_tensor_symbol_t));
 input_io->visit = 0;
 input_io->incomings = 0;
 input_io->outgoings = 0;
 input_io->model = input;
 input_io->outputs = (ccv_nnc_tensor_symbol_t*)(input_io + 1);
 ccv_array_push(input->io, &input_io);
 input->outputs = (ccv_nnc_tensor_symbol_t*)(input + 1);
 input->output_size = 1;
 return input_io;
}
