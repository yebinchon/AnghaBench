
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVENT ;


 int Free (int *) ;
 int KS_FREEEVENT_COUNT ;
 int KS_INC (int ) ;
 int OSFreeEvent (int *) ;

void CleanupEvent(EVENT *e)
{

 if (e == ((void*)0))
 {
  return;
 }


 OSFreeEvent(e);


 Free(e);


 KS_INC(KS_FREEEVENT_COUNT);
}
