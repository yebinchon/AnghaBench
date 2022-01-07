
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int MMAL_POOL_T ;


 int mmal_pool_allocator_default_alloc ;
 int mmal_pool_allocator_default_free ;
 int * mmal_pool_create_with_allocator (unsigned int,int ,int *,int ,int ) ;

MMAL_POOL_T *mmal_pool_create(unsigned int headers, uint32_t payload_size)
{
   return mmal_pool_create_with_allocator(headers, payload_size, ((void*)0),
             mmal_pool_allocator_default_alloc, mmal_pool_allocator_default_free);
}
