
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ MaxLoggedPacketsPerMinuteStartTick; scalar_t__ CurrentNumPackets; scalar_t__ L3SwitchMode; scalar_t__ LinkModeClient; scalar_t__ LinkModeServer; scalar_t__ BridgeMode; scalar_t__ SecureNATMode; TYPE_1__* Policy; } ;
struct TYPE_4__ {scalar_t__ NoBroadcastLimiter; } ;
typedef TYPE_2__ SESSION ;



bool CheckMaxLoggedPacketsPerMinute(SESSION *s, UINT max_packets, UINT64 now)
{
 UINT64 minute = 60 * 1000;

 if (s == ((void*)0) || max_packets == 0)
 {
  return 1;
 }

 if ((s->Policy != ((void*)0) && s->Policy->NoBroadcastLimiter) ||
  s->SecureNATMode || s->BridgeMode || s->LinkModeServer || s->LinkModeClient ||
  s->L3SwitchMode)
 {
  return 1;
 }

 if (s->MaxLoggedPacketsPerMinuteStartTick == 0 ||
  ((s->MaxLoggedPacketsPerMinuteStartTick + minute) <= now))
 {
  s->MaxLoggedPacketsPerMinuteStartTick = now;
  s->CurrentNumPackets = 0;
 }

 s->CurrentNumPackets++;
 if (s->CurrentNumPackets > max_packets)
 {
  return 0;
 }

 return 1;
}
