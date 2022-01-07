
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VC_CONTAINER_IO_T ;


 int VC_CONTAINER_PARAM_UNUSED (size_t) ;

__attribute__((used)) static size_t io_null_write(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   VC_CONTAINER_PARAM_UNUSED(p_ctx);
   VC_CONTAINER_PARAM_UNUSED(buffer);
   VC_CONTAINER_PARAM_UNUSED(size);
   return size;
}
