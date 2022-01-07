
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_nnc_tape_exec_data_array_t ;
struct TYPE_4__ {int const rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_1__ const* const,int const) ;

__attribute__((used)) static ccv_nnc_tape_exec_data_array_t* _ccv_nnc_tape_exec_data_array_get(const ccv_array_t* const exec_data, const int pos)
{
 assert((pos >> 1) <= exec_data->rnum);
 return (ccv_nnc_tape_exec_data_array_t*)ccv_array_get(exec_data, pos >> 1);
}
