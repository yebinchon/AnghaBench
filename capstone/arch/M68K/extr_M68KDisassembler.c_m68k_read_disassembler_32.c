
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int* code; } ;
typedef TYPE_1__ m68k_info ;



__attribute__((used)) static unsigned int m68k_read_disassembler_32(const m68k_info *info, const uint64_t addr)
{
 const uint32_t v0 = info->code[addr + 0];
 const uint32_t v1 = info->code[addr + 1];
 const uint32_t v2 = info->code[addr + 2];
 const uint32_t v3 = info->code[addr + 3];
 return (v0 << 24) | (v1 << 16) | (v2 << 8) | v3;
}
