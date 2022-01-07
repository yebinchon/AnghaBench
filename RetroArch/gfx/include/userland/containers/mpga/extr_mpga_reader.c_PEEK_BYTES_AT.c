
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef int VC_CONTAINER_T ;


 int PEEK_BYTES (int *,int *,int) ;
 int SEEK (int *,scalar_t__) ;
 scalar_t__ STREAM_POSITION (int *) ;

__attribute__((used)) static uint32_t PEEK_BYTES_AT( VC_CONTAINER_T *p_ctx, int64_t offset, uint8_t *buffer, int size )
{
   int ret;
   int64_t current_position = STREAM_POSITION(p_ctx);
   SEEK(p_ctx, current_position + offset);
   ret = PEEK_BYTES(p_ctx, buffer, size);
   SEEK(p_ctx, current_position);
   return ret;
}
