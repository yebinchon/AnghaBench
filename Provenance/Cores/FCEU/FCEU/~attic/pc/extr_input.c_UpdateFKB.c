
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int* fkbkeys ;
 int * fkbmap ;

__attribute__((used)) static void UpdateFKB(void)
{
 int x;

 for(x=0;x<0x48;x++)
 {
  fkbkeys[x]=0;

  if(DTestButton(&fkbmap[x]))
   fkbkeys[x]=1;
 }
}
