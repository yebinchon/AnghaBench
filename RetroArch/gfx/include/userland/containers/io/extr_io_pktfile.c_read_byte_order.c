
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint32_t ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int FILE ;




 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_SUCCESS ;
 int fread (int*,int,int,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T read_byte_order(FILE *stream, bool *is_native)
{
   uint32_t value;

   if (fread(&value, 1, sizeof(value), stream) != sizeof(value))
      return VC_CONTAINER_ERROR_EOS;

   switch (value)
   {
   case 129: *is_native = 1; break;
   case 128: *is_native = 0; break;
   default: return VC_CONTAINER_ERROR_CORRUPTED;
   }

   return VC_CONTAINER_SUCCESS;
}
