
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_space_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_3__ {int * is_entropy; int bool_gen; } ;


 int IE_BITS_ROLL_BITS ;
 int IS_ENTROPY_CNT ;
 int random_bool_gen_bits (int *,int *,int ,int ) ;

ipc_entry_bits_t
ipc_space_get_rollpoint(
 ipc_space_t space)
{
 return random_bool_gen_bits(
   &space->bool_gen,
   &space->is_entropy[0],
   IS_ENTROPY_CNT,
   IE_BITS_ROLL_BITS);
}
