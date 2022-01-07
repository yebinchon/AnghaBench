
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MMAL_PARAM_UNUSED (void*) ;
 void* vcos_malloc (int ,char*) ;

__attribute__((used)) static void *mmal_pool_allocator_default_alloc(void *context, uint32_t size)
{
   MMAL_PARAM_UNUSED(context);
   return vcos_malloc(size, "mmal_pool payload");
}
