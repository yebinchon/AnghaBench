
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* client; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_4__ {int ps; } ;


 int BG_AddPredictableEventToPlayerstate (int,int,int *) ;

void G_AddPredictableEvent( gentity_t *ent, int event, int eventParm ) {
 if ( !ent->client ) {
  return;
 }
 BG_AddPredictableEventToPlayerstate( event, eventParm, &ent->client->ps );
}
