
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint32_t thumb_ldr_pc_address(uint32_t address)
{
 return (address & 0xFFFFFFFC) + (*(uint16_t*) address & 0xFF) * 4 + 4;
}
