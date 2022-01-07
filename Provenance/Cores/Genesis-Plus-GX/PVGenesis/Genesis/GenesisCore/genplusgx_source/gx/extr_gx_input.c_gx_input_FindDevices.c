
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* input; } ;
struct TYPE_5__ {scalar_t__* dev; } ;
struct TYPE_4__ {int device; int port; } ;


 int MAX_DEVICES ;
 scalar_t__ NO_DEVICE ;
 int PAD_ScanPads () ;
 int VIDEO_WaitVSync () ;
 int WPAD_Probe (int,int*) ;
 TYPE_3__ config ;
 TYPE_2__ input ;

int gx_input_FindDevices(void)
{
  int i;



  int found = 0;
  int player = 0;

  VIDEO_WaitVSync();
  u32 pad = PAD_ScanPads();

  for (i=0; i<MAX_DEVICES; i++)
  {

    if (input.dev[i] != NO_DEVICE)
    {

      switch (config.input[player].device)
      {
        case 0:
        {
          if (pad & (1 << config.input[player].port))
          {
            found++;
          }
          break;
        }
        default:
        {
          break;
        }
      }


      player ++;
    }
  }


  return found;
}
