
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_8t ;
typedef int uint_32t ;


 int block_copy (void*,void const*) ;
 int xor_block (void*,void const*) ;

__attribute__((used)) static void copy_and_key( void *d, const void *s, const void *k )
{






    ((uint_8t *)d)[ 0] = ((uint_8t *)s)[ 0] ^ ((uint_8t *)k)[ 0];
    ((uint_8t *)d)[ 1] = ((uint_8t *)s)[ 1] ^ ((uint_8t *)k)[ 1];
    ((uint_8t *)d)[ 2] = ((uint_8t *)s)[ 2] ^ ((uint_8t *)k)[ 2];
    ((uint_8t *)d)[ 3] = ((uint_8t *)s)[ 3] ^ ((uint_8t *)k)[ 3];
    ((uint_8t *)d)[ 4] = ((uint_8t *)s)[ 4] ^ ((uint_8t *)k)[ 4];
    ((uint_8t *)d)[ 5] = ((uint_8t *)s)[ 5] ^ ((uint_8t *)k)[ 5];
    ((uint_8t *)d)[ 6] = ((uint_8t *)s)[ 6] ^ ((uint_8t *)k)[ 6];
    ((uint_8t *)d)[ 7] = ((uint_8t *)s)[ 7] ^ ((uint_8t *)k)[ 7];
    ((uint_8t *)d)[ 8] = ((uint_8t *)s)[ 8] ^ ((uint_8t *)k)[ 8];
    ((uint_8t *)d)[ 9] = ((uint_8t *)s)[ 9] ^ ((uint_8t *)k)[ 9];
    ((uint_8t *)d)[10] = ((uint_8t *)s)[10] ^ ((uint_8t *)k)[10];
    ((uint_8t *)d)[11] = ((uint_8t *)s)[11] ^ ((uint_8t *)k)[11];
    ((uint_8t *)d)[12] = ((uint_8t *)s)[12] ^ ((uint_8t *)k)[12];
    ((uint_8t *)d)[13] = ((uint_8t *)s)[13] ^ ((uint_8t *)k)[13];
    ((uint_8t *)d)[14] = ((uint_8t *)s)[14] ^ ((uint_8t *)k)[14];
    ((uint_8t *)d)[15] = ((uint_8t *)s)[15] ^ ((uint_8t *)k)[15];




}
