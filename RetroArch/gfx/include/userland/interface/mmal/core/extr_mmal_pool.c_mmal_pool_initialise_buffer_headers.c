
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_1__* priv; scalar_t__ alloc_size; int * data; } ;
struct TYPE_10__ {int header_size; scalar_t__ payload_size; int (* allocator_free ) (int ,int *) ;int allocator_context; scalar_t__ (* allocator_alloc ) (int ,scalar_t__) ;} ;
struct TYPE_9__ {unsigned int headers_num; TYPE_4__** header; } ;
struct TYPE_8__ {int refcount; scalar_t__ payload_size; int (* pf_payload_free ) (int ,int *) ;int payload_context; int * payload; void* owner; int pf_release; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_2__ MMAL_POOL_T ;
typedef TYPE_3__ MMAL_POOL_PRIVATE_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;
typedef scalar_t__ MMAL_BOOL_T ;


 int ALIGN ;
 int LOG_ERROR (char*,unsigned int,unsigned int) ;
 int LOG_TRACE (char*,scalar_t__,unsigned int,unsigned int) ;
 int MMAL_ENOMEM ;
 int MMAL_SUCCESS ;
 int ROUND_UP (int,int ) ;
 TYPE_4__* mmal_buffer_header_initialise (TYPE_4__*,int) ;
 int mmal_pool_buffer_header_release ;
 scalar_t__ stub1 (int ,scalar_t__) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static MMAL_STATUS_T mmal_pool_initialise_buffer_headers(MMAL_POOL_T *pool, unsigned int headers,
                                                         MMAL_BOOL_T reinitialise)
{
   MMAL_POOL_PRIVATE_T *private = (MMAL_POOL_PRIVATE_T *)pool;
   MMAL_BUFFER_HEADER_T *header;
   uint8_t *payload = ((void*)0);
   unsigned int i;

   header = (MMAL_BUFFER_HEADER_T *)((uint8_t *)pool->header + ROUND_UP(sizeof(void *)*headers,ALIGN));

   for (i = 0; i < headers; i++)
   {
      if (reinitialise)
         header = mmal_buffer_header_initialise(header, private->header_size);

      if (private->payload_size && private->allocator_alloc)
      {
         LOG_TRACE("allocating %u bytes for payload %u/%u", private->payload_size, i, headers);
         payload = (uint8_t*)private->allocator_alloc(private->allocator_context, private->payload_size);
         if (! payload)
         {
            LOG_ERROR("failed to allocate payload %u/%u", i, headers);
            return MMAL_ENOMEM;
         }
      }
      else
      {
         if (header->priv->pf_payload_free && header->priv->payload && header->priv->payload_size)
         {
            LOG_TRACE("freeing %u bytes for payload %u/%u", header->priv->payload_size, i, headers);
            header->priv->pf_payload_free(header->priv->payload_context, header->priv->payload);
         }
      }
      header->data = payload;
      header->alloc_size = private->payload_size;
      header->priv->pf_release = mmal_pool_buffer_header_release;
      header->priv->owner = (void *)pool;
      header->priv->refcount = 1;
      header->priv->payload = payload;
      header->priv->payload_context = private->allocator_context;
      header->priv->pf_payload_free = private->allocator_free;
      header->priv->payload_size = private->payload_size;
      pool->header[i] = header;
      pool->headers_num = i+1;
      header = (MMAL_BUFFER_HEADER_T *)((uint8_t*)header + private->header_size);
   }

   return MMAL_SUCCESS;
}
