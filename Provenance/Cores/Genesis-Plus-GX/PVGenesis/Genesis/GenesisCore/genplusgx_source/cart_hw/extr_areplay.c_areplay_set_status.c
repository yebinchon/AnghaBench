
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16 ;
struct TYPE_4__ {scalar_t__ enabled; int status; int* addr; int* data; int* regs; void** old; } ;
struct TYPE_3__ {int rom; } ;





 scalar_t__ TYPE_AR ;
 TYPE_2__ action_replay ;
 TYPE_1__ cart ;

void areplay_set_status(int status)
{
  if (action_replay.enabled)
  {

    if ((action_replay.enabled == TYPE_AR) && (status == 128))
    {
      status = 130;
    }


    switch (status)
    {
      case 130:
      case 128:
      {

        if (action_replay.status == 129)
        {

          *(uint16 *)(cart.rom + action_replay.addr[0]) = action_replay.old[0];
          *(uint16 *)(cart.rom + action_replay.addr[1]) = action_replay.old[1];
          *(uint16 *)(cart.rom + action_replay.addr[2]) = action_replay.old[2];
          *(uint16 *)(cart.rom + action_replay.addr[3]) = action_replay.old[3];
        }
        break;
      }

      case 129:
      {

        if (action_replay.status != 129)
        {

          action_replay.data[0] = action_replay.regs[0];
          action_replay.data[1] = action_replay.regs[4];
          action_replay.data[2] = action_replay.regs[7];
          action_replay.data[3] = action_replay.regs[10];


          action_replay.addr[0] = (action_replay.regs[1] | ((action_replay.regs[2] & 0x3f00) << 8)) << 1;
          action_replay.addr[1] = (action_replay.regs[5] | ((action_replay.regs[6] & 0x3f00) << 8)) << 1;
          action_replay.addr[2] = (action_replay.regs[8] | ((action_replay.regs[9] & 0x3f00) << 8)) << 1;
          action_replay.addr[3] = (action_replay.regs[11] | ((action_replay.regs[12] & 0x3f00) << 8)) << 1;


          action_replay.old[0] = *(uint16 *)(cart.rom + action_replay.addr[0]);
          action_replay.old[1] = *(uint16 *)(cart.rom + action_replay.addr[1]);
          action_replay.old[2] = *(uint16 *)(cart.rom + action_replay.addr[2]);
          action_replay.old[3] = *(uint16 *)(cart.rom + action_replay.addr[3]);


          *(uint16 *)(cart.rom + action_replay.addr[0]) = action_replay.data[0];
          *(uint16 *)(cart.rom + action_replay.addr[1]) = action_replay.data[1];
          *(uint16 *)(cart.rom + action_replay.addr[2]) = action_replay.data[2];
          *(uint16 *)(cart.rom + action_replay.addr[3]) = action_replay.data[3];
        }
        break;
      }

      default:
      {
        return;
      }
    }


    action_replay.status = status;
  }
}
