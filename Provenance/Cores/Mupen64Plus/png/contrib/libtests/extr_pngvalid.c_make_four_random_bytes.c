
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_bytep ;


 int make_random_bytes (int *,int ,int) ;

__attribute__((used)) static void
make_four_random_bytes(png_uint_32* seed, png_bytep bytes)
{
   make_random_bytes(seed, bytes, 4);
}
