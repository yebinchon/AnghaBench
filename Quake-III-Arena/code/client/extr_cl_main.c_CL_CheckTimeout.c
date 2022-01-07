
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int timeoutcount; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_9__ {int lastPacketTime; } ;
struct TYPE_8__ {scalar_t__ state; int realtime; } ;
struct TYPE_7__ {int integer; } ;


 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_CONNECTED ;
 int CL_Disconnect (int ) ;
 int Com_Printf (char*) ;
 TYPE_6__ cl ;
 TYPE_5__* cl_paused ;
 TYPE_4__* cl_timeout ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 int qtrue ;
 TYPE_1__* sv_paused ;

void CL_CheckTimeout( void ) {



 if ( ( !cl_paused->integer || !sv_paused->integer )
  && cls.state >= CA_CONNECTED && cls.state != CA_CINEMATIC
     && cls.realtime - clc.lastPacketTime > cl_timeout->value*1000) {
  if (++cl.timeoutcount > 5) {
   Com_Printf ("\nServer connection timed out.\n");
   CL_Disconnect( qtrue );
   return;
  }
 } else {
  cl.timeoutcount = 0;
 }
}
