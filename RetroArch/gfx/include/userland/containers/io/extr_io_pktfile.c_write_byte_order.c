
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint32_t ;
typedef int VC_CONTAINER_STATUS_T ;
typedef int FILE ;


 int NATIVE_BYTE_ORDER ;
 int VC_CONTAINER_ERROR_OUT_OF_SPACE ;
 int VC_CONTAINER_SUCCESS ;
 int fwrite (int *,int,int,int *) ;

__attribute__((used)) static VC_CONTAINER_STATUS_T write_byte_order(FILE *stream)
{

   uint32_t value = NATIVE_BYTE_ORDER;

   if (fwrite(&value, 1, sizeof(value), stream) != sizeof(value))
      return VC_CONTAINER_ERROR_OUT_OF_SPACE;

   return VC_CONTAINER_SUCCESS;
}
