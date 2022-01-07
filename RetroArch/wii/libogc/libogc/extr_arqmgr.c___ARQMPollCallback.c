
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int polled; int * callback; int arqhandle; } ;
typedef int ARQRequest ;
typedef TYPE_1__ ARQM_Info ;


 size_t ARQM_STACKENTRIES ;
 int TRUE ;
 TYPE_1__* __ARQMInfo ;

__attribute__((used)) static void __ARQMPollCallback(ARQRequest *req)
{
 u32 i;
 ARQM_Info *ptr = ((void*)0);

 for(i=0;i<ARQM_STACKENTRIES;i++) {
  ptr = &__ARQMInfo[i];
  if(req==&ptr->arqhandle) break;
 }
 if(i>=ARQM_STACKENTRIES) return;

 ptr->callback = ((void*)0);
 ptr->polled = TRUE;
}
