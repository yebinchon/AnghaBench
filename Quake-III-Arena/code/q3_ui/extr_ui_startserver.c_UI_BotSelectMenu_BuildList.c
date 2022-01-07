
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numBots; int numpages; int* sortedBotNums; scalar_t__ modelpage; } ;


 int MAX_MODELSPERPAGE ;
 int UI_BotSelectMenu_SortCompare ;
 int UI_GetNumBots () ;
 TYPE_1__ botSelectInfo ;
 int qsort (int*,int,int,int ) ;

__attribute__((used)) static void UI_BotSelectMenu_BuildList( void ) {
 int n;

 botSelectInfo.modelpage = 0;
 botSelectInfo.numBots = UI_GetNumBots();
 botSelectInfo.numpages = botSelectInfo.numBots / MAX_MODELSPERPAGE;
 if( botSelectInfo.numBots % MAX_MODELSPERPAGE ) {
  botSelectInfo.numpages++;
 }


 for( n = 0; n < botSelectInfo.numBots; n++ ) {
  botSelectInfo.sortedBotNums[n] = n;
 }


 qsort( botSelectInfo.sortedBotNums, botSelectInfo.numBots, sizeof(botSelectInfo.sortedBotNums[0]), UI_BotSelectMenu_SortCompare );
}
