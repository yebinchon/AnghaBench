
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HU_FONTSTART ;
 int HU_INPUTX ;
 int HU_INPUTY ;
 int HU_MSGHEIGHT ;
 int HU_MSGX ;
 int HU_MSGY ;
 int HU_Stop () ;
 char* HU_TITLE ;
 char* HU_TITLE2 ;
 int HU_TITLEX ;
 int HU_TITLEY ;
 int HUlib_addCharToTextLine (int *,int ) ;
 int HUlib_initIText (int *,int ,int ,int ,int ,int*) ;
 int HUlib_initSText (int *,int ,int ,int ,int ,int ,int*) ;
 int HUlib_initTextLine (int *,int ,int ,int ,int ) ;
 int MAXPLAYERS ;
 int always_off ;
 int chat_on ;

 size_t consoleplayer ;
 int gamemode ;
 int headsupactive ;
 int hu_font ;
 int message_dontfuckwithme ;
 int message_nottobefuckedwith ;
 int message_on ;
 int * players ;
 int * plr ;



 int w_chat ;
 int * w_inputbuffer ;
 int w_message ;
 int w_title ;

void HU_Start(void)
{

    int i;
    char* s;

    if (headsupactive)
 HU_Stop();

    plr = &players[consoleplayer];
    message_on = 0;
    message_dontfuckwithme = 0;
    message_nottobefuckedwith = 0;
    chat_on = 0;


    HUlib_initSText(&w_message,
      HU_MSGX, HU_MSGY, HU_MSGHEIGHT,
      hu_font,
      HU_FONTSTART, &message_on);


    HUlib_initTextLine(&w_title,
         HU_TITLEX, HU_TITLEY,
         hu_font,
         HU_FONTSTART);

    switch ( gamemode )
    {
      case 128:
      case 130:
      case 129:
 s = HU_TITLE;
 break;
      case 131:
      default:
  s = HU_TITLE2;
  break;
    }

    while (*s)
 HUlib_addCharToTextLine(&w_title, *(s++));


    HUlib_initIText(&w_chat,
      HU_INPUTX, HU_INPUTY,
      hu_font,
      HU_FONTSTART, &chat_on);


    for (i=0 ; i<MAXPLAYERS ; i++)
 HUlib_initIText(&w_inputbuffer[i], 0, 0, 0, 0, &always_off);

    headsupactive = 1;

}
