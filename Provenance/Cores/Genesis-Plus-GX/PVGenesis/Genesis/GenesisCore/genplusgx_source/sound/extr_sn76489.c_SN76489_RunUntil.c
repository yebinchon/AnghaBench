
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RunNoise (unsigned int) ;
 int RunTone (int,unsigned int) ;

__attribute__((used)) static void SN76489_RunUntil(unsigned int clocks)
{
  int i;


  RunNoise(clocks);


  for (i=0; i<3; ++i)
  {
    RunTone(i, clocks);
  }
}
