
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int s8 ;
typedef int s16 ;
struct TYPE_7__ {int btns_d; int btns_h; } ;
typedef TYPE_1__ WPADData ;
struct TYPE_9__ {scalar_t__ valid; } ;
struct TYPE_8__ {int keys; TYPE_5__ ir; } ;


 int ANALOG_SENSITIVITY ;
 scalar_t__ HELD_DELAY ;
 scalar_t__ HELD_SPEED ;
 int PAD_BUTTONS_HELD ;
 int PAD_BUTTON_A ;
 int PAD_BUTTON_B ;
 int PAD_BUTTON_DOWN ;
 int PAD_BUTTON_LEFT ;
 int PAD_BUTTON_RIGHT ;
 int PAD_BUTTON_UP ;
 int PAD_ButtonsDown (int ) ;
 int PAD_ButtonsHeld (int ) ;
 int PAD_ScanPads () ;
 int PAD_StickX (int ) ;
 int PAD_StickY (int ) ;
 int PAD_TRIGGER_L ;
 int PAD_TRIGGER_R ;
 int PAD_TRIGGER_Z ;
 int WPAD_BUTTONS_HELD ;
 int WPAD_BUTTON_1 ;
 int WPAD_BUTTON_2 ;
 int WPAD_BUTTON_A ;
 int WPAD_BUTTON_B ;
 int WPAD_BUTTON_DOWN ;
 int WPAD_BUTTON_HOME ;
 int WPAD_BUTTON_LEFT ;
 int WPAD_BUTTON_MINUS ;
 int WPAD_BUTTON_PLUS ;
 int WPAD_BUTTON_RIGHT ;
 int WPAD_BUTTON_UP ;
 int WPAD_CLASSIC_BUTTON_A ;
 int WPAD_CLASSIC_BUTTON_B ;
 int WPAD_CLASSIC_BUTTON_DOWN ;
 int WPAD_CLASSIC_BUTTON_FULL_L ;
 int WPAD_CLASSIC_BUTTON_FULL_R ;
 int WPAD_CLASSIC_BUTTON_HOME ;
 int WPAD_CLASSIC_BUTTON_LEFT ;
 int WPAD_CLASSIC_BUTTON_RIGHT ;
 int WPAD_CLASSIC_BUTTON_UP ;
 TYPE_1__* WPAD_Data (int ) ;
 int WPAD_IR (int ,TYPE_5__*) ;
 int WPAD_ScanPads () ;
 scalar_t__ held_cnt ;
 scalar_t__ inputs_disabled ;
 TYPE_4__ m_input ;
 int wpad_StickX (TYPE_1__*,int ) ;
 int wpad_StickY (TYPE_1__*,int ) ;

void gx_input_UpdateMenu(void)
{

  if (inputs_disabled) return;


  PAD_ScanPads();


  s16 pp = PAD_ButtonsDown(0);


  s16 hp = PAD_ButtonsHeld(0) & PAD_BUTTONS_HELD;


  s8 x = PAD_StickX(0);
  s8 y = PAD_StickY(0);
  if (x > ANALOG_SENSITIVITY) hp |= PAD_BUTTON_RIGHT;
  else if (x < -ANALOG_SENSITIVITY) hp |= PAD_BUTTON_LEFT;
  else if (y > ANALOG_SENSITIVITY) hp |= PAD_BUTTON_UP;
  else if (y < -ANALOG_SENSITIVITY) hp |= PAD_BUTTON_DOWN;
  if (pp) held_cnt = 0;
  else if (hp) held_cnt++;
  else held_cnt = 0;



  if (held_cnt > HELD_DELAY)
  {

    pp |= hp;





    held_cnt -= HELD_SPEED;
  }
  m_input.keys = pp;
}
