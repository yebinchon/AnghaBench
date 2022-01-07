
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* io; } ;
typedef TYPE_1__ ccv_cnnp_model_t ;
typedef TYPE_2__* ccv_cnnp_model_io_t ;
struct TYPE_10__ {int sequence_size; TYPE_2__** sequence; } ;
typedef TYPE_3__ ccv_cnnp_functional_model_t ;
struct TYPE_11__ {int rnum; } ;
struct TYPE_9__ {TYPE_1__* model; } ;


 int assert (TYPE_5__*) ;
 scalar_t__ ccv_array_get (TYPE_5__*,int) ;
 int ccv_cnnp_model_free (TYPE_1__*) ;

__attribute__((used)) static void _ccv_cnnp_functional_model_deinit(ccv_cnnp_model_t* const super)
{
 ccv_cnnp_functional_model_t* const self = (ccv_cnnp_functional_model_t*)super;
 int i, j = 0, k;
 for (i = 0; i < self->sequence_size; i++)
 {
  ccv_cnnp_model_t* const model = self->sequence[i]->model;
  if (!model)
   continue;
  self->sequence[j++] = (ccv_cnnp_model_io_t)model;

  assert(model->io);
  for (k = 0; k < model->io->rnum; k++)
  {
   ccv_cnnp_model_io_t model_io = *(ccv_cnnp_model_io_t*)ccv_array_get(model->io, k);
   model_io->model = 0;
  }
 }
 for (i = 0; i < j; i++)
  ccv_cnnp_model_free((ccv_cnnp_model_t*)self->sequence[i]);
}
