
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* input; } ;
struct TYPE_5__ {scalar_t__* dev; scalar_t__* pad; } ;
struct TYPE_4__ {scalar_t__ device; int port; } ;


 int ConfigRequested ;
 int MAX_DEVICES ;
 scalar_t__ NO_DEVICE ;
 int PAD_ScanPads () ;
 int RAMCheatUpdate () ;
 int WPAD_BUTTON_HOME ;
 int WPAD_ButtonsHeld (int ) ;
 int WPAD_CLASSIC_BUTTON_HOME ;
 int WPAD_ScanPads () ;
 TYPE_3__ config ;
 TYPE_2__ input ;
 int pad_update (int ,int) ;
 int wpad_update (int ,int,scalar_t__) ;

void gx_input_UpdateEmu(void)
{

  PAD_ScanPads();
  int i, player = 0;
  for (i=0; i<MAX_DEVICES; i++)
  {

    if (input.dev[i] != NO_DEVICE)
    {

      input.pad[i] = 0;

      if (config.input[player].device == 0)
      {
        pad_update(config.input[player].port, i);
      }
      player ++;
    }
  }


  RAMCheatUpdate();
}
