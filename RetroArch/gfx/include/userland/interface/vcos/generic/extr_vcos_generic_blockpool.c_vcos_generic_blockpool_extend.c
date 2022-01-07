
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
typedef int VCOS_STATUS_T ;
struct TYPE_7__ {int num_subpools; int num_extension_blocks; TYPE_1__* subpools; } ;
typedef TYPE_2__ VCOS_BLOCKPOOL_T ;
struct TYPE_6__ {int * mem; int * start; int magic; } ;


 int ASSERT_POOL (TYPE_2__*) ;
 int VCOS_BLOCKPOOL_MAX_SUBPOOLS ;
 int VCOS_BLOCKPOOL_SUBPOOL_MAGIC ;
 int VCOS_EACCESS ;
 int VCOS_EINVAL ;
 int VCOS_FUNCTION ;
 int VCOS_SUCCESS ;
 int vcos_log_trace (char*,int ,TYPE_2__*,int,int) ;

VCOS_STATUS_T vcos_generic_blockpool_extend(VCOS_BLOCKPOOL_T *pool,
      VCOS_UNSIGNED num_extensions, VCOS_UNSIGNED num_blocks)
{
   VCOS_UNSIGNED i;
   ASSERT_POOL(pool);

   vcos_log_trace("%s: pool %p num_extensions %d num_blocks %d",
         VCOS_FUNCTION, pool, num_extensions, num_blocks);


   if (pool->num_subpools > 1)
      return VCOS_EACCESS;

   if (num_extensions < 1 ||
         num_extensions > VCOS_BLOCKPOOL_MAX_SUBPOOLS - 1)
      return VCOS_EINVAL;

   if (num_blocks < 1)
      return VCOS_EINVAL;

   pool->num_subpools += num_extensions;
   pool->num_extension_blocks = num_blocks;


   for (i = 1; i < pool->num_subpools; ++i)
   {
      pool->subpools[i].magic = VCOS_BLOCKPOOL_SUBPOOL_MAGIC;
      pool->subpools[i].start = ((void*)0);
      pool->subpools[i].mem = ((void*)0);
   }

   return VCOS_SUCCESS;
}
