
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DTestButton (int *) ;
 int * FTrainerButtons ;
 int FTrainerData ;

__attribute__((used)) static void UpdateFTrainer(void)
{
 int x;

 FTrainerData=0;

 for(x=0;x<12;x++)
 {
  if(DTestButton(&FTrainerButtons[x]))
   FTrainerData|=1<<x;
 }
}
