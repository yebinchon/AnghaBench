
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bits_in_16bits ;
 int bits_in_16bits_init ;
 int sparse_bitcount (int) ;

__attribute__((used)) static void precomputed_16bits() {
 int i;
 for (i = 0; i < (0x1u << 16); i++)
  bits_in_16bits[i] = sparse_bitcount(i);
 bits_in_16bits_init = 1;
}
