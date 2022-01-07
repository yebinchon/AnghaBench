
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int ;


 int mp_count_bits (int *) ;

__attribute__((used)) static int
mp_unsigned_bin_size (mp_int * a)
{
  int size = mp_count_bits (a);
  return (size / 8 + ((size & 7) != 0 ? 1 : 0));
}
