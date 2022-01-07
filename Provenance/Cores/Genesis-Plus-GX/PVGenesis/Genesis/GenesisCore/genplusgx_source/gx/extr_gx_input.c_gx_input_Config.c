
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * system; } ;
 int GUI_WaitPrompt (char*,char*) ;
 size_t KEY_BUTTONA ;
 size_t KEY_BUTTONB ;
 size_t KEY_BUTTONC ;
 size_t KEY_BUTTONX ;
 size_t KEY_BUTTONY ;
 size_t KEY_BUTTONZ ;
 size_t KEY_MODE ;
 size_t KEY_START ;
 int SYSTEM_JUSTIFIER ;
 int SYSTEM_MENACER ;
 TYPE_1__ input ;
 int * keyname ;
 int pad_config (int,int,int) ;
 int sprintf (int ,char*) ;
 int wpad_config (int,int,int,int) ;

void gx_input_Config(u8 chan, u8 device, u8 type)
{
  int first_key, last_key;


  switch (type)
  {
    case 132:
    case 135:
    case 130:
    {
      first_key = KEY_BUTTONB;
      last_key = KEY_START;
      sprintf(keyname[KEY_BUTTONB],"Button 1");
      sprintf(keyname[KEY_BUTTONC],"Button 2");
      sprintf(keyname[KEY_START],"PAUSE Button");
      break;
    }

    case 128:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_MODE;
      sprintf(keyname[KEY_BUTTONA],"Button A");
      sprintf(keyname[KEY_BUTTONB],"Button B");
      sprintf(keyname[KEY_BUTTONC],"Button C");
      sprintf(keyname[KEY_START],"START Button");
      sprintf(keyname[KEY_BUTTONX],"Button D");
      sprintf(keyname[KEY_BUTTONY],"Button E1");
      sprintf(keyname[KEY_BUTTONZ],"Button E2");
      sprintf(keyname[KEY_MODE],"SELECT Button");
      break;
    }

    case 136:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      sprintf(keyname[KEY_BUTTONA],"Middle Button");
      sprintf(keyname[KEY_BUTTONB],"Left Button");
      sprintf(keyname[KEY_BUTTONC],"Right Button");
      sprintf(keyname[KEY_START],"START Button");
      break;
    }

    case 134:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      sprintf(keyname[KEY_BUTTONA],"Button A");
      sprintf(keyname[KEY_BUTTONB],"Button B");
      sprintf(keyname[KEY_BUTTONC],"Button C");
      sprintf(keyname[KEY_START],"START Button");
      break;
    }

    case 133:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_MODE;
      sprintf(keyname[KEY_BUTTONA],"Button A");
      sprintf(keyname[KEY_BUTTONB],"Button B");
      sprintf(keyname[KEY_BUTTONC],"Button C");
      sprintf(keyname[KEY_START],"START Button");
      sprintf(keyname[KEY_BUTTONX],"Button X");
      sprintf(keyname[KEY_BUTTONY],"Button Y");
      sprintf(keyname[KEY_BUTTONZ],"Button Z");
      sprintf(keyname[KEY_MODE],"MODE Button");
      break;
    }

    case 137:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_START;
      if (input.system[1] == SYSTEM_MENACER)
      {
        sprintf(keyname[KEY_BUTTONA],"TRIGGER Button");
        sprintf(keyname[KEY_BUTTONB],"Button B");
        sprintf(keyname[KEY_BUTTONC],"Button C");
        sprintf(keyname[KEY_START],"START Button");
      }
      else if (input.system[1] == SYSTEM_JUSTIFIER)
      {
        sprintf(keyname[KEY_BUTTONA],"TRIGGER Button");
        sprintf(keyname[KEY_BUTTONB],"N.A");
        sprintf(keyname[KEY_BUTTONC],"N.A");
        sprintf(keyname[KEY_START],"START Button");
      }
      else
      {
        sprintf(keyname[KEY_BUTTONA],"TRIGGER Button");
        sprintf(keyname[KEY_BUTTONB],"N.A");
        sprintf(keyname[KEY_BUTTONC],"N.A");
        sprintf(keyname[KEY_START],"PAUSE Button");
      }
      break;
    }

    case 131:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONB;
      sprintf(keyname[KEY_BUTTONA],"PEN Button");
      sprintf(keyname[KEY_BUTTONB],"RED Button");
      break;
    }

    case 129:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONA;
      sprintf(keyname[KEY_BUTTONA],"PEN Button");
      break;
    }

    default:
    {
      first_key = KEY_BUTTONA;
      last_key = KEY_BUTTONA;
      sprintf(keyname[KEY_BUTTONA],"N.A");
      GUI_WaitPrompt("Info","Activator is not configurable !");
      break;
    }
  }


  switch (device)
  {
    case 0:
    {
      pad_config(chan, first_key, last_key);
      break;
    }

    default:
    {



      break;
    }
  }
}
