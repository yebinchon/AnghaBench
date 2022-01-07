
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned long long int64_t ;


 int assert (int) ;

__attribute__((used)) static int64_t
sign_extend(int64_t input, uint32_t sign_bit_index)
{
 assert(sign_bit_index < 63);
 if (input & (1ULL << sign_bit_index)) {

  input |= ((~0ULL) & ~((1ULL << (sign_bit_index + 1)) - 1ULL));
 }

 return input;
}
