
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ LastSendBeacon; } ;
typedef TYPE_1__ VH ;


 scalar_t__ BEACON_SEND_INTERVAL ;
 int SendBeacon (TYPE_1__*) ;
 scalar_t__ Tick64 () ;

void PollingBeacon(VH *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 if (v->LastSendBeacon == 0 ||
  ((v->LastSendBeacon + BEACON_SEND_INTERVAL) <= Tick64()))
 {
  v->LastSendBeacon = Tick64();

  SendBeacon(v);
 }
}
