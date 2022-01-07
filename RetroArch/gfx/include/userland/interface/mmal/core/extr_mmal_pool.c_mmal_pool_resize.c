
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ payload_size; unsigned int headers_alloc_num; unsigned int header_size; } ;
struct TYPE_5__ {unsigned int headers_num; int * header; int queue; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_1__ MMAL_POOL_T ;
typedef TYPE_2__ MMAL_POOL_PRIVATE_T ;


 int ALIGN ;
 int MMAL_EINVAL ;
 int MMAL_ENOMEM ;
 int MMAL_SUCCESS ;
 scalar_t__ ROUND_UP (int,int ) ;
 int mmal_pool_initialise_buffer_headers (TYPE_1__*,unsigned int,int) ;
 int mmal_queue_get (int ) ;
 int mmal_queue_put (int ,int ) ;
 int * vcos_calloc (scalar_t__,int,char*) ;
 int vcos_free (int *) ;

MMAL_STATUS_T mmal_pool_resize(MMAL_POOL_T *pool, unsigned int headers, uint32_t payload_size)
{
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   unsigned int i;

   if (!private || !headers)
      return MMAL_EINVAL;


   if (headers == pool->headers_num && payload_size == private->payload_size)
      return MMAL_SUCCESS;


   for (i = 0; i < pool->headers_num; i++)
      mmal_queue_get(pool->queue);


   private->payload_size = 0;
   mmal_pool_initialise_buffer_headers(pool, pool->headers_num, 0);
   pool->headers_num = 0;


   if (headers > private->headers_alloc_num)
   {
      private->headers_alloc_num = 0;
      if (pool->header)
         vcos_free(pool->header);
      pool->header =
         vcos_calloc(private->header_size * headers + ROUND_UP(sizeof(void *)*headers,ALIGN),
                     1, "MMAL buffer headers");
      if (!pool->header)
         return MMAL_ENOMEM;
      private->headers_alloc_num = headers;
   }


   private->payload_size = payload_size;
   mmal_pool_initialise_buffer_headers(pool, headers, 1);


   for (i = 0; i < pool->headers_num; i++)
      mmal_queue_put(pool->queue, pool->header[i]);

   return MMAL_SUCCESS;
}
