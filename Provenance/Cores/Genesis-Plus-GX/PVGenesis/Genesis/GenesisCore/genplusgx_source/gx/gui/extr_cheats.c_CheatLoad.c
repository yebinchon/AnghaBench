
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int enable; scalar_t__* text; scalar_t__* code; } ;
struct TYPE_7__ {scalar_t__ autocheat; } ;
struct TYPE_6__ {TYPE_1__* buttons; } ;
struct TYPE_5__ {int* shift; int state; } ;
typedef int FILE ;


 int BUTTON_ACTIVE ;
 char* DEFAULT_PATH ;
 int MAX_CHEATS ;
 int MAX_DESC_LENGTH ;
 int apply_cheats () ;
 TYPE_4__* cheatlist ;
 TYPE_3__ config ;
 int decode_cheat (char*,int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int maxcheats ;
 int memset (char*,int ,int) ;
 TYPE_2__ menu_cheats ;
 scalar_t__ offset ;
 char* rom_filename ;
 scalar_t__ selection ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (scalar_t__*,char*,int) ;

void CheatLoad(void)
{
  int len;
  int cnt = 0;
  char temp[256];


  maxcheats = 0;


  sprintf(temp, "%s/cheats/%s.pat", DEFAULT_PATH, rom_filename);


  FILE *f = fopen(temp, "r");
  if (f)
  {

    memset(temp, 0, 256);


    while (fgets(temp, 256, f) && (maxcheats < MAX_CHEATS) && (cnt < MAX_CHEATS))
    {

      if ((temp[strlen(temp) - 2] == 0x0d) || (temp[strlen(temp) - 2] == 0x0a)) temp[strlen(temp) - 2] = 0;
      else temp[strlen(temp) - 1] = 0;


      len = decode_cheat(temp, maxcheats);

      if (len)
      {

        strncpy(cheatlist[maxcheats].code, temp, len);
        cheatlist[maxcheats].code[len] = 0;
        len++;


        while ((temp[len] == 0x20) || (temp[len] == 0x09)) len++;


        strncpy(cheatlist[maxcheats].text, &temp[len], MAX_DESC_LENGTH - 1);
        cheatlist[maxcheats].text[MAX_DESC_LENGTH - 1] = 0;


        maxcheats++;
      }
      else if (!strcmp(temp,"ON") && config.autocheat)
      {

        cheatlist[cnt++].enable = 1;
      }
      else if (!strcmp(temp,"OFF") && config.autocheat)
      {

        cheatlist[cnt++].enable = 0;
      }
    }


    while (cnt < maxcheats) cheatlist[cnt++].enable = 0;


    fclose(f);
  }


  apply_cheats();


  for (cnt=0; cnt<10; cnt++)
  {
    if (cnt < maxcheats)
    {
      menu_cheats.buttons[cnt].state |= BUTTON_ACTIVE;
      menu_cheats.buttons[cnt].shift[1] = 1;
    }
    else if (cnt == maxcheats)
    {
      menu_cheats.buttons[cnt].state |= BUTTON_ACTIVE;
      menu_cheats.buttons[cnt].shift[1] = 0;
    }
    else
    {
      menu_cheats.buttons[cnt].shift[1] = 0;
      menu_cheats.buttons[cnt].state &= ~BUTTON_ACTIVE;
    }
  }


  selection = offset = 0;
}
