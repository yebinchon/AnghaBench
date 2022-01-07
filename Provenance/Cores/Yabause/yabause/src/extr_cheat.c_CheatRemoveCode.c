
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CheatRemoveCodeByIndex (int) ;
 int FindCheat (int,int ,int ) ;

int CheatRemoveCode(int type, u32 addr, u32 val)
{
   int i;

   if ((i = FindCheat(type, addr, val)) == -1)

      return -1;

   return CheatRemoveCodeByIndex(i);
}
