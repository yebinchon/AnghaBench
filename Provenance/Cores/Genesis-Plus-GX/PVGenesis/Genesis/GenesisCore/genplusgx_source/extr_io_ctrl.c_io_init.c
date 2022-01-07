
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* system; } ;
struct TYPE_3__ {void* data_r; void* data_w; } ;
 void* activator_1_read ;
 void* activator_1_write ;
 void* activator_2_read ;
 void* activator_2_write ;
 void* dummy_read ;
 void* dummy_write ;
 void* gamepad_1_read ;
 void* gamepad_1_write ;
 void* gamepad_2_read ;
 void* gamepad_2_write ;
 TYPE_2__ input ;
 int input_init () ;
 void* justifier_read ;
 void* justifier_write ;
 void* menacer_read ;
 void* mouse_read ;
 void* mouse_write ;
 void* paddle_1_read ;
 void* paddle_1_write ;
 void* paddle_2_read ;
 void* paddle_2_write ;
 void* phaser_1_read ;
 void* phaser_2_read ;
 TYPE_1__* port ;
 void* sportspad_1_read ;
 void* sportspad_1_write ;
 void* sportspad_2_read ;
 void* sportspad_2_write ;
 void* teamplayer_1_read ;
 void* teamplayer_1_write ;
 void* teamplayer_2_read ;
 void* teamplayer_2_write ;
 void* wayplay_1_read ;
 void* wayplay_1_write ;
 void* wayplay_2_read ;
 void* wayplay_2_write ;
 void* xe_a1p_1_read ;
 void* xe_a1p_1_write ;
 void* xe_a1p_2_read ;
 void* xe_a1p_2_write ;

void io_init(void)
{

  input_init();


  switch (input.system[0])
  {
    case 133:
    {
      port[0].data_w = dummy_write;
      port[0].data_r = gamepad_1_read;
      break;
    }

    case 136:
    {
      port[0].data_w = gamepad_1_write;
      port[0].data_r = gamepad_1_read;
      break;
    }

    case 134:
    {
      port[0].data_w = mouse_write;
      port[0].data_r = mouse_read;
      break;
    }

    case 139:
    {
      port[0].data_w = activator_1_write;
      port[0].data_r = activator_1_read;
      break;
    }

    case 128:
    {
      port[0].data_w = xe_a1p_1_write;
      port[0].data_r = xe_a1p_1_read;
      break;
    }

    case 129:
    {
      port[0].data_w = wayplay_1_write;
      port[0].data_r = wayplay_1_read;
      break;
    }

    case 130:
    {
      port[0].data_w = teamplayer_1_write;
      port[0].data_r = teamplayer_1_read;
      break;
    }

    case 137:
    {
      port[0].data_w = dummy_write;
      port[0].data_r = phaser_1_read;
      break;
    }

    case 132:
    {
      port[0].data_w = paddle_1_write;
      port[0].data_r = paddle_1_read;
      break;
    }

    case 131:
    {
      port[0].data_w = sportspad_1_write;
      port[0].data_r = sportspad_1_read;
      break;
    }

    default:
    {
      port[0].data_w = dummy_write;
      port[0].data_r = dummy_read;
      break;
    }
  }

  switch (input.system[1])
  {
    case 133:
    {
      port[1].data_w = dummy_write;
      port[1].data_r = gamepad_2_read;
      break;
    }

    case 136:
    {
      port[1].data_w = gamepad_2_write;
      port[1].data_r = gamepad_2_read;
      break;
    }

    case 134:
    {
      port[1].data_w = mouse_write;
      port[1].data_r = mouse_read;
      break;
    }

    case 128:
    {
      port[1].data_w = xe_a1p_2_write;
      port[1].data_r = xe_a1p_2_read;
      break;
    }

    case 139:
    {
      port[1].data_w = activator_2_write;
      port[1].data_r = activator_2_read;
      break;
    }

    case 135:
    {
      port[1].data_w = dummy_write;
      port[1].data_r = menacer_read;
      break;
    }

    case 138:
    {
      port[1].data_w = justifier_write;
      port[1].data_r = justifier_read;
      break;
    }

    case 129:
    {
      port[1].data_w = wayplay_2_write;
      port[1].data_r = wayplay_2_read;
      break;
    }

    case 130:
    {
      port[1].data_w = teamplayer_2_write;
      port[1].data_r = teamplayer_2_read;
      break;
    }

    case 137:
    {
      port[1].data_w = dummy_write;
      port[1].data_r = phaser_2_read;
      break;
    }

    case 132:
    {
      port[1].data_w = paddle_2_write;
      port[1].data_r = paddle_2_read;
      break;
    }

    case 131:
    {
      port[1].data_w = sportspad_2_write;
      port[1].data_r = sportspad_2_read;
      break;
    }

    default:
    {
      port[1].data_w = dummy_write;
      port[1].data_r = dummy_read;
      break;
    }
  }


  port[2].data_w = dummy_write;
  port[2].data_r = dummy_read;
}
