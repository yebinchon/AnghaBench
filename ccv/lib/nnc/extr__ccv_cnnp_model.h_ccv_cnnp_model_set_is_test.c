
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* isa; } ;
typedef TYPE_2__ ccv_cnnp_model_t ;
typedef int ccv_cnnp_cmd_updater_f ;
struct TYPE_5__ {int (* set_is_test ) (TYPE_2__* const,int const,int const,void* const) ;} ;


 int stub1 (TYPE_2__* const,int const,int const,void* const) ;

__attribute__((used)) static inline void ccv_cnnp_model_set_is_test(ccv_cnnp_model_t* const self, const int is_test, const ccv_cnnp_cmd_updater_f updater, void* const context)
{
 if (self->isa->set_is_test)
  self->isa->set_is_test(self, is_test, updater, context);
}
