
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int block_data_size; } ;
typedef TYPE_1__ VCOS_BLOCKPOOL_T ;


 int memset (void*,int ,int ) ;
 void* vcos_generic_blockpool_alloc (TYPE_1__*) ;

void *vcos_generic_blockpool_calloc(VCOS_BLOCKPOOL_T *pool)
{
   void* ret = vcos_generic_blockpool_alloc(pool);
   if (ret)
      memset(ret, 0, pool->block_data_size);
   return ret;
}
