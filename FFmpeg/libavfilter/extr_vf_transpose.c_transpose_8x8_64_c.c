
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int transpose_block_64_c (int *,int ,int *,int ,int,int) ;

__attribute__((used)) static void transpose_8x8_64_c(uint8_t *src, ptrdiff_t src_linesize,
                               uint8_t *dst, ptrdiff_t dst_linesize)
{
    transpose_block_64_c(src, src_linesize, dst, dst_linesize, 8, 8);
}
