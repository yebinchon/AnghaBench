
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeMemory (int ) ;
 scalar_t__ numlreachabilities ;
 int reachabilityheap ;

void AAS_ShutDownReachabilityHeap(void)
{
 FreeMemory(reachabilityheap);
 numlreachabilities = 0;
}
