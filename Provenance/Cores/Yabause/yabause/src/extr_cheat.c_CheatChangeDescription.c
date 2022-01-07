
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CheatChangeDescriptionByIndex (int,char*) ;
 int FindCheat (int,int ,int ) ;

int CheatChangeDescription(int type, u32 addr, u32 val, char *desc)
{
   int i;

   if ((i = FindCheat(type, addr, val)) == -1)

      return -1;

   return CheatChangeDescriptionByIndex(i, desc);
}
