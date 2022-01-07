
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* isa; } ;
typedef TYPE_2__ ccv_cnnp_model_t ;
typedef int ccv_cnnp_add_to_array_f ;
struct TYPE_7__ {int (* add_to_output ) (TYPE_2__* const,int const,void* const) ;} ;


 int ccv_cnnp_model_pop (TYPE_2__* const,void* const) ;
 int ccv_cnnp_model_push (TYPE_2__* const,void* const) ;
 int stub1 (TYPE_2__* const,int const,void* const) ;

__attribute__((used)) static inline void ccv_cnnp_model_add_to_output(ccv_cnnp_model_t* const self, const ccv_cnnp_add_to_array_f add_to_array, void* const outputs)
{
 if (self->isa->add_to_output)
 {
  ccv_cnnp_model_push(self, outputs);
  self->isa->add_to_output(self, add_to_array, outputs);
  ccv_cnnp_model_pop(self, outputs);
 }
}
