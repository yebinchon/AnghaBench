
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int desa_ascii (char) ;

__attribute__((used)) static void desa_reg(int reg)
{
  desa_ascii(((reg&8)? 'A0':'D0') + (reg&7));
}
