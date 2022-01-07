
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int phys_attribute_set_internal (int ,unsigned int) ;

__attribute__((used)) static void
phys_attribute_set(
 ppnum_t pn,
 unsigned int bits)
{
 phys_attribute_set_internal(pn, bits);
}
