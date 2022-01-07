
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t iv_index_t ;
typedef TYPE_1__* ipc_voucher_t ;
struct TYPE_3__ {size_t iv_table_size; size_t* iv_table; } ;


 int assert (int) ;

__attribute__((used)) static void
iv_set(ipc_voucher_t iv,
       iv_index_t key_index,
       iv_index_t value_index)
{
 assert(key_index < iv->iv_table_size);
 iv->iv_table[key_index] = value_index;
}
