
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int VC_CONTAINER_IO_T ;


 int INITIAL_READ_BUFFER_SIZE ;
 int MAXIMUM_READ_BUFFER_SIZE ;
 int VC_CONTAINER_CONTROL_IO_SET_READ_BUFFER_SIZE ;
 scalar_t__ VC_CONTAINER_SUCCESS ;
 scalar_t__ vc_container_io_control (int *,int ,int) ;

__attribute__((used)) static void increase_read_buffer_size(VC_CONTAINER_IO_T *p_ctx)
{
   uint32_t buffer_size = INITIAL_READ_BUFFER_SIZE;


   while (vc_container_io_control(p_ctx, VC_CONTAINER_CONTROL_IO_SET_READ_BUFFER_SIZE, buffer_size) == VC_CONTAINER_SUCCESS)
   {
      buffer_size <<= 1;
      if (buffer_size > MAXIMUM_READ_BUFFER_SIZE)
         break;
   }
}
