
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ EVENT ;


 int KS_INC (int ) ;
 int KS_NEWEVENT_COUNT ;
 TYPE_1__* Malloc (int) ;
 int NewRef () ;
 int OSInitEvent (TYPE_1__*) ;

EVENT *NewEvent()
{

 EVENT *e = Malloc(sizeof(EVENT));


 e->ref = NewRef();


 OSInitEvent(e);


 KS_INC(KS_NEWEVENT_COUNT);

 return e;
}
