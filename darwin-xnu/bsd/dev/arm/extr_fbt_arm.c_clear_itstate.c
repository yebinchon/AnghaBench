
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void clear_itstate(uint32_t* cpsr)
{
 *cpsr &= ~0x0600FC00;
}
