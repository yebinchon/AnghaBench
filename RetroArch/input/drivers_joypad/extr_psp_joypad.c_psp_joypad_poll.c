
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ input_backtouch_toggle; scalar_t__ input_backtouch_enable; } ;
struct TYPE_22__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_27__ {scalar_t__* port; } ;
struct TYPE_26__ {int ident; } ;
struct TYPE_25__ {scalar_t__* port; } ;
struct TYPE_24__ {int buttons; int Buttons; } ;
struct TYPE_23__ {unsigned int reportNum; TYPE_2__* report; int member_0; } ;
struct TYPE_21__ {int y; int x; } ;
typedef TYPE_4__ SceTouchData ;
typedef int SceCtrlPortInfo ;
typedef TYPE_5__ SceCtrlData ;
typedef int SceCtrlActuator ;


 int BIT64_CLEAR (int ,int ) ;
 int BIT64_SET (int ,int ) ;
 scalar_t__ CtrlPeekBufferPositive (unsigned int,TYPE_5__*,int) ;
 int CtrlSetSamplingMode (int ) ;
 unsigned int DEFAULT_MAX_PADS ;
 int DEFAULT_SAMPLING_MODE ;
 int LERP (int ,int ,int ) ;
 scalar_t__ NE_AREA (int,int) ;
 scalar_t__ NW_AREA (int,int) ;
 int PSP_CTRL_CIRCLE ;
 int PSP_CTRL_CROSS ;
 int PSP_CTRL_DOWN ;
 int PSP_CTRL_L ;
 int PSP_CTRL_L2 ;
 int PSP_CTRL_L3 ;
 int PSP_CTRL_LEFT ;
 int PSP_CTRL_NOTE ;
 int PSP_CTRL_R ;
 int PSP_CTRL_R2 ;
 int PSP_CTRL_R3 ;
 int PSP_CTRL_RIGHT ;
 int PSP_CTRL_SELECT ;
 int PSP_CTRL_SQUARE ;
 int PSP_CTRL_START ;
 int PSP_CTRL_TRIANGLE ;
 int PSP_CTRL_UP ;
 int RARCH_MENU_TOGGLE ;
 size_t RETRO_DEVICE_ID_ANALOG_X ;
 size_t RETRO_DEVICE_ID_ANALOG_Y ;
 int RETRO_DEVICE_ID_JOYPAD_A ;
 int RETRO_DEVICE_ID_JOYPAD_B ;
 int RETRO_DEVICE_ID_JOYPAD_DOWN ;
 int RETRO_DEVICE_ID_JOYPAD_L ;
 int RETRO_DEVICE_ID_JOYPAD_L2 ;
 int RETRO_DEVICE_ID_JOYPAD_L3 ;
 int RETRO_DEVICE_ID_JOYPAD_LEFT ;
 int RETRO_DEVICE_ID_JOYPAD_R ;
 int RETRO_DEVICE_ID_JOYPAD_R2 ;
 int RETRO_DEVICE_ID_JOYPAD_R3 ;
 int RETRO_DEVICE_ID_JOYPAD_RIGHT ;
 int RETRO_DEVICE_ID_JOYPAD_SELECT ;
 int RETRO_DEVICE_ID_JOYPAD_START ;
 int RETRO_DEVICE_ID_JOYPAD_UP ;
 int RETRO_DEVICE_ID_JOYPAD_X ;
 int RETRO_DEVICE_ID_JOYPAD_Y ;
 size_t RETRO_DEVICE_INDEX_ANALOG_LEFT ;
 size_t RETRO_DEVICE_INDEX_ANALOG_RIGHT ;
 scalar_t__ SCE_CTRL_TYPE_UNPAIRED ;
 scalar_t__ SCE_KERNEL_MODEL_VITA ;
 scalar_t__ SCE_KERNEL_MODEL_VITATV ;
 int SCE_TOUCH_PORT_BACK ;
 int SCE_TOUCH_PORT_FRONT ;
 int SCREEN_HEIGHT ;
 int SCREEN_WIDTH ;
 scalar_t__ SE_AREA (int,int) ;
 int STATE_ANALOGLX (TYPE_5__) ;
 int STATE_ANALOGLY (TYPE_5__) ;
 int STATE_ANALOGRX (TYPE_5__) ;
 int STATE_ANALOGRY (TYPE_5__) ;
 int STATE_BUTTON (TYPE_5__) ;
 scalar_t__ SW_AREA (int,int) ;
 int TOUCH_MAX_HEIGHT ;
 int TOUCH_MAX_WIDTH ;
 int UINT64_C (int) ;
 int * actuators ;
 int*** analog_state ;
 TYPE_3__* config_get_ptr () ;
 TYPE_7__ curr_ctrl_info ;
 int input_autoconfigure_connect (int ,int *,int ,unsigned int,int ,int ) ;
 int input_autoconfigure_disconnect (unsigned int,int ) ;
 int lifecycle_state ;
 int memcpy (TYPE_9__*,TYPE_7__*,int) ;
 int memset (int *,int ,int) ;
 TYPE_9__ old_ctrl_info ;
 int* pad_state ;
 scalar_t__ psp2_model ;
 TYPE_8__ psp_joypad ;
 int psp_joypad_name (unsigned int) ;
 int read_system_buttons () ;
 int sceCtrlGetControllerPortInfo (TYPE_7__*) ;
 int sceCtrlSetSamplingCycle (int ) ;
 int sceTouchPeek (int ,TYPE_4__*,int) ;

__attribute__((used)) static void psp_joypad_poll(void)
{
   unsigned player;
   unsigned players_count = DEFAULT_MAX_PADS;
   CtrlSetSamplingMode(DEFAULT_SAMPLING_MODE);

   BIT64_CLEAR(lifecycle_state, RARCH_MENU_TOGGLE);

   for (player = 0; player < players_count; player++)
   {
      unsigned j, k;
      SceCtrlData state_tmp;
      unsigned i = player;
      unsigned p = player;

      int32_t ret = CtrlPeekBufferPositive(p, &state_tmp, 1);

      pad_state[i] = 0;
      analog_state[i][0][0] = analog_state[i][0][1] =
         analog_state[i][1][0] = analog_state[i][1][1] = 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_LEFT) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_LEFT) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_DOWN) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_DOWN) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_RIGHT) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_RIGHT) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_UP) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_UP) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_START) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_START) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_SELECT) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_SELECT) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_TRIANGLE) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_X) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_SQUARE) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_Y) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_CROSS) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_B) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_CIRCLE) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_A) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_R) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_R) : 0;
      pad_state[i] |= (STATE_BUTTON(state_tmp) & PSP_CTRL_L) ? (UINT64_C(1) << RETRO_DEVICE_ID_JOYPAD_L) : 0;







      analog_state[i][RETRO_DEVICE_INDEX_ANALOG_LEFT] [RETRO_DEVICE_ID_ANALOG_X] = (int16_t)(STATE_ANALOGLX(state_tmp)-128) * 256;
      analog_state[i][RETRO_DEVICE_INDEX_ANALOG_LEFT] [RETRO_DEVICE_ID_ANALOG_Y] = (int16_t)(STATE_ANALOGLY(state_tmp)-128) * 256;
      for (j = 0; j < 2; j++)
         for (k = 0; k < 2; k++)
            if (analog_state[i][j][k] == -0x8000)
               analog_state[i][j][k] = -0x7fff;
   }
}
