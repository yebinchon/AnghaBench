
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int * alloc_zeroed (int,int) ;

__attribute__((used)) static void init_cachealigned_buffer(int32_t min_size, uint8_t **out_buf_ptr, int32_t *actual_size)
{
   *actual_size = (min_size + 0x3f) & ~0x3f;

   *out_buf_ptr = alloc_zeroed(64, *actual_size);
}
