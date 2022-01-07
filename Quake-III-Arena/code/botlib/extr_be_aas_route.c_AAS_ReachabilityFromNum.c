
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aas_reachability_s {int dummy; } ;
typedef int aas_reachability_t ;
struct TYPE_2__ {int reachabilitysize; int * reachability; int initialized; } ;


 int Com_Memcpy (struct aas_reachability_s*,int *,int) ;
 int Com_Memset (struct aas_reachability_s*,int ,int) ;
 TYPE_1__ aasworld ;

void AAS_ReachabilityFromNum(int num, struct aas_reachability_s *reach)
{
 if (!aasworld.initialized)
 {
  Com_Memset(reach, 0, sizeof(aas_reachability_t));
  return;
 }
 if (num < 0 || num >= aasworld.reachabilitysize)
 {
  Com_Memset(reach, 0, sizeof(aas_reachability_t));
  return;
 }
 Com_Memcpy(reach, &aasworld.reachability[num], sizeof(aas_reachability_t));;
}
