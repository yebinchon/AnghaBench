
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int time; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int teamChatPos; int teamLastChatPos; char** teamChatMsgs; int * teamChatMsgTimes; } ;


 int Q_COLOR_ESCAPE ;
 scalar_t__ Q_IsColorString (char const*) ;
 int TEAMCHAT_HEIGHT ;
 int TEAMCHAT_WIDTH ;
 TYPE_4__ cg ;
 TYPE_3__ cg_teamChatHeight ;
 TYPE_2__ cg_teamChatTime ;
 TYPE_1__ cgs ;

__attribute__((used)) static void CG_AddToTeamChat( const char *str ) {
 int len;
 char *p, *ls;
 int lastcolor;
 int chatHeight;

 if (cg_teamChatHeight.integer < TEAMCHAT_HEIGHT) {
  chatHeight = cg_teamChatHeight.integer;
 } else {
  chatHeight = TEAMCHAT_HEIGHT;
 }

 if (chatHeight <= 0 || cg_teamChatTime.integer <= 0) {

  cgs.teamChatPos = cgs.teamLastChatPos = 0;
  return;
 }

 len = 0;

 p = cgs.teamChatMsgs[cgs.teamChatPos % chatHeight];
 *p = 0;

 lastcolor = '7';

 ls = ((void*)0);
 while (*str) {
  if (len > TEAMCHAT_WIDTH - 1) {
   if (ls) {
    str -= (p - ls);
    str++;
    p -= (p - ls);
   }
   *p = 0;

   cgs.teamChatMsgTimes[cgs.teamChatPos % chatHeight] = cg.time;

   cgs.teamChatPos++;
   p = cgs.teamChatMsgs[cgs.teamChatPos % chatHeight];
   *p = 0;
   *p++ = Q_COLOR_ESCAPE;
   *p++ = lastcolor;
   len = 0;
   ls = ((void*)0);
  }

  if ( Q_IsColorString( str ) ) {
   *p++ = *str++;
   lastcolor = *str;
   *p++ = *str++;
   continue;
  }
  if (*str == ' ') {
   ls = p;
  }
  *p++ = *str++;
  len++;
 }
 *p = 0;

 cgs.teamChatMsgTimes[cgs.teamChatPos % chatHeight] = cg.time;
 cgs.teamChatPos++;

 if (cgs.teamChatPos - cgs.teamLastChatPos > chatHeight)
  cgs.teamLastChatPos = cgs.teamChatPos - chatHeight;
}
