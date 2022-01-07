
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMAL_PARAM_UNUSED (void*) ;
 int vcos_free (void*) ;

__attribute__((used)) static void mmal_pool_allocator_default_free(void *context, void *mem)
{
   MMAL_PARAM_UNUSED(context);
   vcos_free(mem);
}
