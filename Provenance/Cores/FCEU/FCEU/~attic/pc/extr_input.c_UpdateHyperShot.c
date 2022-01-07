
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int * HyperShotButtons ;
 int HyperShotData ;

__attribute__((used)) static void UpdateHyperShot(void)
{
 int x;

 HyperShotData=0;
 for(x=0;x<0x4;x++)
 {
  if(DTestButton(&HyperShotButtons[x]))
   HyperShotData|=1<<x;
 }
}
