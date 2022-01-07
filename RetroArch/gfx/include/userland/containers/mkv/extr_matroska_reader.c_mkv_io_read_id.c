
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int VC_CONTAINER_IO_T ;


 int vc_container_io_read_uint8 (int *) ;

__attribute__((used)) static uint32_t mkv_io_read_id(VC_CONTAINER_IO_T *io, int64_t *size)
{
   uint32_t value, mask;

   value = vc_container_io_read_uint8(io); (*size)--;
   for(mask = 0x80; mask; mask <<= 7)
   {
      if(value & mask) return value;
      value = (value << 8) | vc_container_io_read_uint8(io); (*size)--;
   }
   return 0;
}
