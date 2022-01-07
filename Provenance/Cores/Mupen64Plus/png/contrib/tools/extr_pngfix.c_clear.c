
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int make_random_bytes (int*,void*,size_t) ;

__attribute__((used)) static void
clear(void *pv, size_t size)
{
   static png_uint_32 clear_seed[2] = { 0x12345678, 0x9abcdef0 };
   make_random_bytes(clear_seed, pv, size);
}
