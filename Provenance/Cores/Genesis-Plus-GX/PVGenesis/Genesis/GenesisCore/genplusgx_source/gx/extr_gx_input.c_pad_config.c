
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int** pad_keymap; } ;


 int GUI_MsgBoxUpdate (int ,char*) ;
 int GUI_WaitPrompt (char*,char*) ;
 size_t KEY_MENU ;
 int MAX_KEYS ;
 int PAD_BUTTON_A ;
 int PAD_BUTTON_B ;
 int PAD_BUTTON_START ;
 int PAD_BUTTON_X ;
 int PAD_BUTTON_Y ;
 int PAD_ButtonsDown (int) ;
 int PAD_ButtonsHeld (int) ;
 int PAD_ScanPads () ;
 int PAD_TRIGGER_L ;
 int PAD_TRIGGER_R ;
 int PAD_TRIGGER_Z ;
 int VIDEO_WaitVSync () ;
 TYPE_1__ config ;
 int inputs_disabled ;
 char** keyname ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void pad_config(int chan, int first_key, int last_key)
{
  u16 p = 0;
  char msg[64];


  inputs_disabled = 1;


  VIDEO_WaitVSync();
  if (!(PAD_ScanPads() & (1<<chan)))
  {

    sprintf(msg, "PAD #%d is not connected !", chan+1);
    GUI_WaitPrompt("Error",msg);


    inputs_disabled = 0;
    return;
  }


  do
  {

    if (strcmp(keyname[first_key], "N.A"))
    {

      while (PAD_ButtonsHeld(chan))
      {
        VIDEO_WaitVSync();
        PAD_ScanPads();
      }


      sprintf(msg,"Press key for %s\n(D-PAD to return)",keyname[first_key]);
      GUI_MsgBoxUpdate(0,msg);


      p = 0;
      while (!p)
      {
        VIDEO_WaitVSync();
        PAD_ScanPads();
        p = PAD_ButtonsDown(chan);
      }


      if (p & PAD_BUTTON_A) p = PAD_BUTTON_A;
      else if (p & PAD_BUTTON_B) p = PAD_BUTTON_B;
      else if (p & PAD_BUTTON_X) p = PAD_BUTTON_X;
      else if (p & PAD_BUTTON_Y) p = PAD_BUTTON_Y;
      else if (p & PAD_TRIGGER_R) p = PAD_TRIGGER_R;
      else if (p & PAD_TRIGGER_L) p = PAD_TRIGGER_L;
      else if (p & PAD_TRIGGER_Z) p = PAD_TRIGGER_Z;
      else if (p & PAD_BUTTON_START) p = PAD_BUTTON_START;
      else first_key = MAX_KEYS;


      if (first_key < MAX_KEYS)
      {
        config.pad_keymap[chan][first_key] = p;
      }
    }
  }
  while (first_key++ < last_key);


  while (PAD_ButtonsHeld(chan))
  {
    VIDEO_WaitVSync();
    PAD_ScanPads();
  }


  GUI_MsgBoxUpdate(0,"Press key(s) for MENU");


  config.pad_keymap[chan][KEY_MENU] = 0;


  p = 0;
  while (!p)
  {

    VIDEO_WaitVSync();
    PAD_ScanPads();
    p = PAD_ButtonsHeld(chan);
  }


  while (p)
  {

    config.pad_keymap[chan][KEY_MENU] |= p;


    VIDEO_WaitVSync();
    PAD_ScanPads();
    p = PAD_ButtonsHeld(chan);
  }


  inputs_disabled = 0;
}
