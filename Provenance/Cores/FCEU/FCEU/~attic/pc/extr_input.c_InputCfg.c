
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConfigDevice (int ,char) ;
 int FCFGD_GAMEPAD ;
 int FCFGD_HYPERSHOT ;
 int FCFGD_POWERPAD ;
 int FCFGD_QUIZKING ;
 int strcasecmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncasecmp (char*,char*,size_t) ;

__attribute__((used)) static void InputCfg(char *text)
{
         if(!strncasecmp(text,"gamepad",strlen("gamepad")))
         {
          ConfigDevice(FCFGD_GAMEPAD,(text[strlen("gamepad")]-'1')&3);
         }
         else if(!strncasecmp(text,"powerpad",strlen("powerpad")))
         {
          ConfigDevice(FCFGD_POWERPAD,(text[strlen("powerpad")]-'1')&1);
         }
         else if(!strcasecmp(text,"hypershot"))
          ConfigDevice(FCFGD_HYPERSHOT,0);
         else if(!strcasecmp(text,"quizking"))
          ConfigDevice(FCFGD_QUIZKING,0);
}
