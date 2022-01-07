
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char chatchar; } ;
struct TYPE_12__ {TYPE_2__ cmd; } ;
struct TYPE_11__ {scalar_t__ message; } ;
struct TYPE_8__ {scalar_t__ l; scalar_t__ len; } ;
struct TYPE_10__ {TYPE_1__ l; } ;


 char HU_BROADCAST ;
 scalar_t__ HU_MSGTIMEOUT ;
 int HUlib_addMessageToSText (int *,int ,scalar_t__) ;
 int HUlib_keyInIText (TYPE_3__*,char) ;
 int HUlib_resetIText (TYPE_3__*) ;
 char KEY_ENTER ;
 int MAXPLAYERS ;
 int S_StartSound (int ,int ) ;
 int* chat_dest ;
 scalar_t__ commercial ;
 int consoleplayer ;
 scalar_t__ gamemode ;
 scalar_t__ message_counter ;
 int message_dontfuckwithme ;
 int message_nottobefuckedwith ;
 int message_on ;
 scalar_t__ netgame ;
 int * player_names ;
 int * playeringame ;
 TYPE_5__* players ;
 TYPE_4__* plr ;
 int sfx_radio ;
 int sfx_tink ;
 scalar_t__* shiftxform ;
 scalar_t__ showMessages ;
 TYPE_3__* w_inputbuffer ;
 int w_message ;

void HU_Ticker(void)
{

    int i, rc;
    char c;


    if (message_counter && !--message_counter)
    {
 message_on = 0;
 message_nottobefuckedwith = 0;
    }

    if (showMessages || message_dontfuckwithme)
    {


 if ((plr->message && !message_nottobefuckedwith)
     || (plr->message && message_dontfuckwithme))
 {
     HUlib_addMessageToSText(&w_message, 0, plr->message);
     plr->message = 0;
     message_on = 1;
     message_counter = HU_MSGTIMEOUT;
     message_nottobefuckedwith = message_dontfuckwithme;
     message_dontfuckwithme = 0;
 }

    }


    if (netgame)
    {
 for (i=0 ; i<MAXPLAYERS; i++)
 {
     if (!playeringame[i])
  continue;
     if (i != consoleplayer
  && (c = players[i].cmd.chatchar))
     {
  if (c <= HU_BROADCAST)
      chat_dest[i] = c;
  else
  {
      if (c >= 'a' && c <= 'z')
   c = (char) shiftxform[(unsigned char) c];
      rc = HUlib_keyInIText(&w_inputbuffer[i], c);
      if (rc && c == KEY_ENTER)
      {
   if (w_inputbuffer[i].l.len
       && (chat_dest[i] == consoleplayer+1
    || chat_dest[i] == HU_BROADCAST))
   {
       HUlib_addMessageToSText(&w_message,
          player_names[i],
          w_inputbuffer[i].l.l);

       message_nottobefuckedwith = 1;
       message_on = 1;
       message_counter = HU_MSGTIMEOUT;
       if ( gamemode == commercial )
         S_StartSound(0, sfx_radio);
       else
         S_StartSound(0, sfx_tink);
   }
   HUlib_resetIText(&w_inputbuffer[i]);
      }
  }
  players[i].cmd.chatchar = 0;
     }
 }
    }

}
