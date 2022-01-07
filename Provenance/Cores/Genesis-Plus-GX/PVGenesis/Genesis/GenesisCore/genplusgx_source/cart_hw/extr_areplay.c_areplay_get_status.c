
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; scalar_t__ enabled; } ;


 TYPE_1__ action_replay ;

int areplay_get_status(void)
{
  if (action_replay.enabled)
  {
    return action_replay.status;
  }

  return -1;
}
