
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {scalar_t__ pollmode; } ;
typedef TYPE_1__ MultiConnectionPollState ;


 scalar_t__ PGRES_POLLING_READING ;
 int WL_SOCKET_READABLE ;
 int WL_SOCKET_WRITEABLE ;

__attribute__((used)) static uint32
MultiConnectionStateEventMask(MultiConnectionPollState *connectionState)
{
 uint32 eventMask = 0;
 if (connectionState->pollmode == PGRES_POLLING_READING)
 {
  eventMask |= WL_SOCKET_READABLE;
 }
 else
 {
  eventMask |= WL_SOCKET_WRITEABLE;
 }
 return eventMask;
}
