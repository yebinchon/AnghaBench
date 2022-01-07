
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ status; int ram; int rom; int addr; int data; int old; int regs; scalar_t__ enabled; } ;
struct TYPE_5__ {TYPE_1__* memory_map; } ;
struct TYPE_4__ {int base; } ;


 scalar_t__ AR_SWITCH_TRAINER ;
 TYPE_3__ action_replay ;
 TYPE_2__ m68k ;
 int memset (int ,int,int) ;

void areplay_reset(int hard)
{
  if (action_replay.enabled)
  {
    if (hard || (action_replay.status == AR_SWITCH_TRAINER))
    {

      memset(action_replay.regs, 0, sizeof(action_replay.regs));
      memset(action_replay.old, 0, sizeof(action_replay.old));
      memset(action_replay.data, 0, sizeof(action_replay.data));
      memset(action_replay.addr, 0, sizeof(action_replay.addr));


      m68k.memory_map[0].base = action_replay.rom;


      if (hard)
      {
        memset(action_replay.ram,0xff,0x10000);
      }
    }
  }
}
