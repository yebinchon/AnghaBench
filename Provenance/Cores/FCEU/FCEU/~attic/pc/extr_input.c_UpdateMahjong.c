
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int * MahjongButtons ;
 int MahjongData ;

__attribute__((used)) static void UpdateMahjong(void)
{
 int x;

 MahjongData=0;
 for(x=0;x<21;x++)
 {
  if(DTestButton(&MahjongButtons[x]))
   MahjongData|=1<<x;
 }
}
