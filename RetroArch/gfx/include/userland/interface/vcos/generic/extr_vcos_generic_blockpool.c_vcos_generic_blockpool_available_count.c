
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t VCOS_UNSIGNED ;
struct TYPE_6__ {size_t num_subpools; int mutex; scalar_t__ num_extension_blocks; TYPE_2__* subpools; } ;
typedef TYPE_1__ VCOS_BLOCKPOOL_T ;
struct TYPE_7__ {scalar_t__ available_blocks; scalar_t__ start; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_SUBPOOL_T ;


 int ASSERT_POOL (TYPE_1__*) ;
 int ASSERT_SUBPOOL (TYPE_2__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

VCOS_UNSIGNED vcos_generic_blockpool_available_count(VCOS_BLOCKPOOL_T *pool)
{
   VCOS_UNSIGNED ret = 0;
   VCOS_UNSIGNED i;

   ASSERT_POOL(pool);
   vcos_mutex_lock(&pool->mutex);
   for (i = 0; i < pool->num_subpools; ++i)
   {
      VCOS_BLOCKPOOL_SUBPOOL_T *subpool = &pool->subpools[i];
      ASSERT_SUBPOOL(subpool);


      if (subpool->start)
         ret += subpool->available_blocks;
      else
         ret += pool->num_extension_blocks;
   }
   vcos_mutex_unlock(&pool->mutex);
   return ret;
}
