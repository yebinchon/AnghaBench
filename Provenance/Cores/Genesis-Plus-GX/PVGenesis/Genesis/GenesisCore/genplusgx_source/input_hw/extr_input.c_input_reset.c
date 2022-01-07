
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* dev; scalar_t__* system; } ;
 int MAX_DEVICES ;
 scalar_t__ SYSTEM_TEAMPLAYER ;
 int activator_reset (int) ;
 int gamepad_reset (int) ;
 TYPE_1__ input ;
 int lightgun_reset (int) ;
 int mouse_reset (int) ;
 int paddle_reset (int) ;
 int sportspad_reset (int) ;
 int teamplayer_reset (int) ;
 int terebi_oekaki_reset () ;
 int xe_a1p_reset (int) ;

void input_reset(void)
{

  int i;
  for (i=0; i<MAX_DEVICES; i++)
  {
    switch (input.dev[i])
    {
      case 134:
      case 133:
      case 132:
      {
        gamepad_reset(i);
        break;
      }

      case 136:
      {
        lightgun_reset(i);
        break;
      }

      case 135:
      {
        mouse_reset(i);
        break;
      }

      case 137:
      {
        activator_reset(i >> 2);
        break;
      }

      case 128:
      {
        xe_a1p_reset(i);
        break;
      }

      case 131:
      {
        paddle_reset(i);
        break;
      }

      case 130:
      {
        sportspad_reset(i);
        break;
      }

      case 129:
      {
        terebi_oekaki_reset();
        break;
      }

      default:
      {
        break;
      }
    }
  }


  for (i=0; i<2; i++)
  {
    if (input.system[i] == SYSTEM_TEAMPLAYER)
    {
      teamplayer_reset(i);
    }
  }
}
