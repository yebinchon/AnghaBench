
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int * slot; } ;
typedef TYPE_1__ OPLL ;


 int UPDATE_EG (int *) ;
 int UPDATE_PG (int *) ;
 int UPDATE_RKS (int *) ;
 int UPDATE_TLL (int *) ;
 int UPDATE_WF (int *) ;

void OPLL_forceRefresh(OPLL * opll) {
 int32 i;

 if (opll == ((void*)0))
  return;

 for (i = 0; i < 12; i++) {
  UPDATE_PG(&opll->slot[i]);
  UPDATE_RKS(&opll->slot[i]);
  UPDATE_TLL(&opll->slot[i]);
  UPDATE_WF(&opll->slot[i]);
  UPDATE_EG(&opll->slot[i]);
 }
}
