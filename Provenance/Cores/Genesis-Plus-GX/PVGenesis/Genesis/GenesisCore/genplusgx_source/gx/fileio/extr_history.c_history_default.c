
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_history_entry ;
struct TYPE_2__ {int * entries; } ;


 int NUM_HISTORY_ENTRIES ;
 TYPE_1__ history ;
 int history_load () ;
 int memset (int *,int ,int) ;

void history_default(void)
{
  int i;
  for(i=0; i < NUM_HISTORY_ENTRIES; i++)
    memset(&history.entries[i], 0, sizeof(t_history_entry));


  history_load();
}
