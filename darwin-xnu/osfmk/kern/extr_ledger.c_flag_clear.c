
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OSBitAndAtomic (int ,int volatile*) ;

__attribute__((used)) static uint32_t
flag_clear(volatile uint32_t *flags, uint32_t bit)
{
 return (OSBitAndAtomic(~bit, flags));
}
