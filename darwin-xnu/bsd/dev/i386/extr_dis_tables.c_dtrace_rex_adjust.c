
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;


 int REX_B ;
 int REX_R ;

__attribute__((used)) static void
dtrace_rex_adjust(uint_t rex_prefix, uint_t mode, uint_t *reg, uint_t *r_m)
{
#pragma unused (mode)
 if (reg != ((void*)0) && r_m == ((void*)0)) {
  if (rex_prefix & REX_B)
   *reg += 8;
 } else {
  if (reg != ((void*)0) && (REX_R & rex_prefix) != 0)
   *reg += 8;
  if (r_m != ((void*)0) && (REX_B & rex_prefix) != 0)
   *r_m += 8;
 }
}
