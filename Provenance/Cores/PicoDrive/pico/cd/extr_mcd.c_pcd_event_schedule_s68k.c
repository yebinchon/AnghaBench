
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pcd_event { ____Placeholder_pcd_event } pcd_event ;


 int SekCyclesDoneS68k () ;
 int SekCyclesLeftS68k ;
 int SekEndRunS68k (int) ;
 int pcd_event_schedule (int ,int,int) ;

void pcd_event_schedule_s68k(enum pcd_event event, int after)
{
  if (SekCyclesLeftS68k > after)
    SekEndRunS68k(after);

  pcd_event_schedule(SekCyclesDoneS68k(), event, after);
}
