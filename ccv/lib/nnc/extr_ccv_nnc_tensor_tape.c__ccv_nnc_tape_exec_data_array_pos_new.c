
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_tape_exec_data_array_t ;
struct TYPE_5__ {int rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 scalar_t__ ccv_array_get (TYPE_1__* const,int) ;
 int ccv_array_resize (TYPE_1__* const,int) ;
 int memset (int * const,int ,int) ;

__attribute__((used)) static void _ccv_nnc_tape_exec_data_array_pos_new(ccv_array_t* const exec_data, int* const pos_ref, ccv_nnc_tape_exec_data_array_t** const tape_exec_data_ref)
{
 int pos = exec_data->rnum;
 ccv_array_resize(exec_data, pos + 1);
 *pos_ref = (pos << 1) | 1;
 ccv_nnc_tape_exec_data_array_t* const tape_exec_data = (ccv_nnc_tape_exec_data_array_t*)ccv_array_get(exec_data, pos);
 memset(tape_exec_data, 0, sizeof(ccv_nnc_tape_exec_data_array_t));
 *tape_exec_data_ref = tape_exec_data;
}
