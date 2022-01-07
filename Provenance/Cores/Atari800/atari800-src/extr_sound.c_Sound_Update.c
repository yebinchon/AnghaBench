
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sound_enabled ;
 int UpdateSyncBuffer () ;
 int WriteOut () ;
 scalar_t__ paused ;

void Sound_Update(void)
{
 if (!Sound_enabled || paused)
  return;




 WriteOut();

}
