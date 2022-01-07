
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; void** key; } ;
typedef TYPE_1__ mpc_block ;
typedef int mpc_bits_reader ;


 scalar_t__ mpc_bits_get_size (int *,int*) ;
 void* mpc_bits_read (int *,int) ;

int mpc_bits_get_block(mpc_bits_reader * r, mpc_block * p_block)
{
 int size = 2;

 p_block->size = 0;
 p_block->key[0] = mpc_bits_read(r, 8);
 p_block->key[1] = mpc_bits_read(r, 8);

 size += mpc_bits_get_size(r, &(p_block->size));

 if (p_block->size >= size)
  p_block->size -= size;

 return size;
}
