
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int desa_char (scalar_t__) ;

__attribute__((used)) static void desa_ascii(unsigned int n)
{
  int shift;
  for(shift=(sizeof(int)-1)*8; shift>=0; shift-=8)
    {
      u8 c;
      c = (u8)(n>>shift);
      if(c) desa_char(c);
    }
}
