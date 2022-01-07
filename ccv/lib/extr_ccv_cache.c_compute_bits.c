
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__* bits_in_16bits ;

__attribute__((used)) static uint32_t compute_bits(uint64_t m) {
 return (bits_in_16bits[m & 0xffff] + bits_in_16bits[(m >> 16) & 0xffff] +
   bits_in_16bits[(m >> 32) & 0xffff] + bits_in_16bits[(m >> 48) & 0xffff]);
}
