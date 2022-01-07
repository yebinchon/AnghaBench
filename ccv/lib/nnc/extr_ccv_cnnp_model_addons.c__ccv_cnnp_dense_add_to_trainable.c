
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_cnnp_model_t ;
struct TYPE_5__ {scalar_t__ graph; } ;
struct TYPE_4__ {TYPE_2__ scale; TYPE_2__ bias; TYPE_2__ weights; } ;
typedef TYPE_1__ ccv_cnnp_model_dense_t ;
typedef int (* ccv_cnnp_add_to_array_f ) (void* const,TYPE_2__) ;



__attribute__((used)) static void _ccv_cnnp_dense_add_to_trainable(ccv_cnnp_model_t* const super, const ccv_cnnp_add_to_array_f add_to_array, void* const trainables)
{
 ccv_cnnp_model_dense_t* const self = (ccv_cnnp_model_dense_t*)super;
 add_to_array(trainables, self->weights);
 if (self->bias.graph)
  add_to_array(trainables, self->bias);
 if (self->scale.graph)
  add_to_array(trainables, self->scale);
}
