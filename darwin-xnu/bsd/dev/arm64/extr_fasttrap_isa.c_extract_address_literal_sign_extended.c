
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int sign_extend (int,int) ;

__attribute__((used)) static uint64_t
extract_address_literal_sign_extended(uint32_t instr, uint32_t base, uint32_t numbits)
{
 uint64_t offset;

 offset = (instr >> base) & ((1 << numbits) - 1);
 offset = sign_extend(offset, numbits - 1);
 offset = offset << 2;

 return offset;
}
