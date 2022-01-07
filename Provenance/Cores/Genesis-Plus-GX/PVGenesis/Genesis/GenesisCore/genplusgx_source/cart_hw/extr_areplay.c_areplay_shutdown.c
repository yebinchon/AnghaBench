
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; } ;


 int AR_SWITCH_OFF ;
 TYPE_1__ action_replay ;
 int areplay_set_status (int ) ;

void areplay_shutdown(void)
{

  areplay_set_status(AR_SWITCH_OFF);


  action_replay.enabled = 0;
}
