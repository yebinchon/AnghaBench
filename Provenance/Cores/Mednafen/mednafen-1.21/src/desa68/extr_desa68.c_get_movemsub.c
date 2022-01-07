
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int desa_char (char) ;
 int desa_reg (scalar_t__) ;

__attribute__((used)) static void get_movemsub(s32 i, s32 j)
{
  desa_reg(i);
  if(i!=j)
    {
      desa_char('-');
      desa_reg(j);
    }
}
