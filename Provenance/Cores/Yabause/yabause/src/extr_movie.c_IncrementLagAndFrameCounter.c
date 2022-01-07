
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LagFrameFlag ;
 int framecounter ;
 int lagframecounter ;

__attribute__((used)) static void IncrementLagAndFrameCounter(void)
{
 if(LagFrameFlag == 1)
  lagframecounter++;

 framecounter++;
}
