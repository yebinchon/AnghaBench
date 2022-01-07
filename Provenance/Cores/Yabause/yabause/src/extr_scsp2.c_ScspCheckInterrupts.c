
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mcieb; int scieb; scalar_t__ scipd; scalar_t__ mcipd; } ;


 int SCSP_INTTARGET_MAIN ;
 int SCSP_INTTARGET_SOUND ;
 int ScspRaiseInterrupt (int,int) ;
 TYPE_1__ scsp ;

__attribute__((used)) static void ScspCheckInterrupts(u16 mask, int target)
{
   int i;

   for (i = 0; i < 11; i++)
   {
      if ((1<<i) & mask & scsp.mcieb && scsp.mcipd)
         ScspRaiseInterrupt(i, SCSP_INTTARGET_MAIN & target);
      if ((1<<i) & mask & scsp.scieb && scsp.scipd)
         ScspRaiseInterrupt(i, SCSP_INTTARGET_SOUND & target);
   }
}
