
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int G_Responder (int *) ;
 int MAXEVENTS ;
 scalar_t__ M_Responder (int *) ;
 scalar_t__ W_CheckNumForName (char*) ;
 scalar_t__ commercial ;
 int eventhead ;
 int * events ;
 int eventtail ;
 scalar_t__ gamemode ;

void D_ProcessEvents (void)
{
    event_t* ev;


    if ( ( gamemode == commercial )
  && (W_CheckNumForName("map01")<0) )
      return;

    for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
    {
 ev = &events[eventtail];
 if (M_Responder (ev))
     continue;
 G_Responder (ev);
    }
}
