
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


struct TYPE_15__ {int pickup_name; } ;
typedef TYPE_4__ gitem_t ;
struct TYPE_16__ {int event; scalar_t__ number; int clientNum; } ;
typedef TYPE_5__ entityState_t ;
struct TYPE_17__ {int medkitUsageTime; } ;
typedef TYPE_6__ clientInfo_t ;
struct TYPE_18__ {TYPE_5__ currentState; } ;
typedef TYPE_7__ centity_t ;
struct TYPE_20__ {int time; TYPE_2__* snap; } ;
struct TYPE_14__ {int useInvulnerabilitySound; int medkitSound; int useNothingSound; } ;
struct TYPE_19__ {TYPE_3__ media; TYPE_6__* clientinfo; } ;
struct TYPE_12__ {scalar_t__ clientNum; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;


 TYPE_4__* BG_FindItemForHoldable (int) ;
 int BIGCHAR_WIDTH ;
 int CG_CenterPrint (char*,double,int ) ;
 int CHAN_BODY ;
 int EV_EVENT_BITS ;
 int EV_USE_ITEM0 ;




 int HI_NUM_HOLDABLE ;


 int MAX_CLIENTS ;
 double SCREEN_HEIGHT ;
 TYPE_9__ cg ;
 TYPE_8__ cgs ;
 int trap_S_StartSound (int *,scalar_t__,int ,int ) ;
 char* va (char*,int ) ;

__attribute__((used)) static void CG_UseItem( centity_t *cent ) {
 clientInfo_t *ci;
 int itemNum, clientNum;
 gitem_t *item;
 entityState_t *es;

 es = &cent->currentState;

 itemNum = (es->event & ~EV_EVENT_BITS) - EV_USE_ITEM0;
 if ( itemNum < 0 || itemNum > HI_NUM_HOLDABLE ) {
  itemNum = 0;
 }


 if ( es->number == cg.snap->ps.clientNum ) {
  if ( !itemNum ) {
   CG_CenterPrint( "No item to use", SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
  } else {
   item = BG_FindItemForHoldable( itemNum );
   CG_CenterPrint( va("Use %s", item->pickup_name), SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
  }
 }

 switch ( itemNum ) {
 default:
 case 130:
  trap_S_StartSound (((void*)0), es->number, CHAN_BODY, cgs.media.useNothingSound );
  break;

 case 128:
  break;

 case 131:
  clientNum = cent->currentState.clientNum;
  if ( clientNum >= 0 && clientNum < MAX_CLIENTS ) {
   ci = &cgs.clientinfo[ clientNum ];
   ci->medkitUsageTime = cg.time;
  }
  trap_S_StartSound (((void*)0), es->number, CHAN_BODY, cgs.media.medkitSound );
  break;
 }

}
