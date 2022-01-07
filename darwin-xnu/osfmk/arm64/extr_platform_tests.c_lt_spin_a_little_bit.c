
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int lt_spinvolatile ;

__attribute__((used)) static void
lt_spin_a_little_bit()
{
 uint32_t i;

 for (i = 0; i < 10000; i++) {
  lt_spinvolatile++;
 }
}
