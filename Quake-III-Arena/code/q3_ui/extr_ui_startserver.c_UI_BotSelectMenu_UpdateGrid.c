
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_19__ {int flags; } ;
struct TYPE_20__ {TYPE_8__ generic; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_18__ {TYPE_6__ generic; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_16__ {TYPE_4__ generic; } ;
struct TYPE_13__ {int flags; int * name; } ;
struct TYPE_14__ {TYPE_2__ generic; scalar_t__ shader; } ;
struct TYPE_12__ {int color; } ;
struct TYPE_11__ {int modelpage; int numBots; int selectedmodel; int numpages; TYPE_9__ right; TYPE_7__ left; TYPE_5__* picbuttons; TYPE_3__* pics; scalar_t__** botnames; TYPE_1__* picnames; int ** boticons; int * sortedBotNums; } ;


 scalar_t__ BotAlreadySelected (scalar_t__*) ;
 int Info_ValueForKey (char const*,char*) ;
 int MAX_MODELSPERPAGE ;
 int MAX_QPATH ;
 int PLAYERGRID_COLS ;
 int PLAYERGRID_ROWS ;
 int QMF_HIGHLIGHT ;
 int QMF_INACTIVE ;
 int QMF_PULSEIFFOCUS ;
 int Q_CleanStr (scalar_t__*) ;
 int Q_strncpyz (scalar_t__*,int ,int) ;
 int ServerPlayerIcon (int ,int *,int ) ;
 char* UI_GetBotInfoByNumber (int ) ;
 TYPE_10__ botSelectInfo ;
 int color_orange ;
 int color_red ;

__attribute__((used)) static void UI_BotSelectMenu_UpdateGrid( void ) {
 const char *info;
 int i;
    int j;

 j = botSelectInfo.modelpage * MAX_MODELSPERPAGE;
 for( i = 0; i < (PLAYERGRID_ROWS * PLAYERGRID_COLS); i++, j++) {
  if( j < botSelectInfo.numBots ) {
   info = UI_GetBotInfoByNumber( botSelectInfo.sortedBotNums[j] );
   ServerPlayerIcon( Info_ValueForKey( info, "model" ), botSelectInfo.boticons[i], MAX_QPATH );
   Q_strncpyz( botSelectInfo.botnames[i], Info_ValueForKey( info, "name" ), 16 );
   Q_CleanStr( botSelectInfo.botnames[i] );
    botSelectInfo.pics[i].generic.name = botSelectInfo.boticons[i];
   if( BotAlreadySelected( botSelectInfo.botnames[i] ) ) {
    botSelectInfo.picnames[i].color = color_red;
   }
   else {
    botSelectInfo.picnames[i].color = color_orange;
   }
   botSelectInfo.picbuttons[i].generic.flags &= ~QMF_INACTIVE;
  }
  else {

    botSelectInfo.pics[i].generic.name = ((void*)0);
   botSelectInfo.picbuttons[i].generic.flags |= QMF_INACTIVE;
   botSelectInfo.botnames[i][0] = 0;
  }

   botSelectInfo.pics[i].generic.flags &= ~QMF_HIGHLIGHT;
   botSelectInfo.pics[i].shader = 0;
   botSelectInfo.picbuttons[i].generic.flags |= QMF_PULSEIFFOCUS;
 }


 i = botSelectInfo.selectedmodel % MAX_MODELSPERPAGE;
 botSelectInfo.pics[i].generic.flags |= QMF_HIGHLIGHT;
 botSelectInfo.picbuttons[i].generic.flags &= ~QMF_PULSEIFFOCUS;

 if( botSelectInfo.numpages > 1 ) {
  if( botSelectInfo.modelpage > 0 ) {
   botSelectInfo.left.generic.flags &= ~QMF_INACTIVE;
  }
  else {
   botSelectInfo.left.generic.flags |= QMF_INACTIVE;
  }

  if( botSelectInfo.modelpage < (botSelectInfo.numpages - 1) ) {
   botSelectInfo.right.generic.flags &= ~QMF_INACTIVE;
  }
  else {
   botSelectInfo.right.generic.flags |= QMF_INACTIVE;
  }
 }
 else {

  botSelectInfo.left.generic.flags |= QMF_INACTIVE;
  botSelectInfo.right.generic.flags |= QMF_INACTIVE;
 }
}
