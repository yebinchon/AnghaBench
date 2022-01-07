
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int botthink_residual; int inuse; } ;


 int MAX_CLIENTS ;
 TYPE_2__ bot_thinktime ;
 TYPE_1__** botstates ;
 int numbots ;

void BotScheduleBotThink(void) {
 int i, botnum;

 botnum = 0;

 for( i = 0; i < MAX_CLIENTS; i++ ) {
  if( !botstates[i] || !botstates[i]->inuse ) {
   continue;
  }

  botstates[i]->botthink_residual = bot_thinktime.integer * botnum / numbots;
  botnum++;
 }
}
