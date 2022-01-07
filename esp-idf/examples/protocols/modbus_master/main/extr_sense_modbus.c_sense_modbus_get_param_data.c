
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ param_offset; int mb_param_type; scalar_t__ param_size; } ;
typedef TYPE_1__ mb_parameter_descriptor_t ;






 int assert (int ) ;
 int coil_reg_params ;
 int discrete_reg_params ;
 int holding_reg_params ;
 int input_reg_params ;
 void* malloc (size_t) ;

__attribute__((used)) static void* sense_modbus_get_param_data(const mb_parameter_descriptor_t* param_descriptor)
{
    assert(param_descriptor != ((void*)0));
    void* instance_ptr = ((void*)0);
    if (param_descriptor->param_offset != 0) {
       switch(param_descriptor->mb_param_type)
       {
           case 129:
               instance_ptr = (void*)((uint32_t)&holding_reg_params + param_descriptor->param_offset - 1);
               break;
           case 128:
               instance_ptr = (void*)((uint32_t)&input_reg_params + param_descriptor->param_offset - 1);
               break;
           case 131:
               instance_ptr = (void*)((uint32_t)&coil_reg_params + param_descriptor->param_offset - 1);
               break;
           case 130:
               instance_ptr = (void*)((uint32_t)&discrete_reg_params + param_descriptor->param_offset - 1);
               break;
           default:
               instance_ptr = ((void*)0);
               break;
       }
    } else {
        instance_ptr = malloc((size_t)(param_descriptor->param_size));;
    }
    return instance_ptr;
}
