
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 unsigned int kMemorystatusKilledZoneMapExhaustion ;

__attribute__((used)) static boolean_t
is_reason_zone_map_exhaustion(unsigned cause)
{
 if (cause == kMemorystatusKilledZoneMapExhaustion)
  return TRUE;
 return FALSE;
}
