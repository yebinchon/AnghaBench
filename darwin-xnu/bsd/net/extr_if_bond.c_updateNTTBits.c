
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lacp_actor_partner_state ;


 int LACP_ACTOR_PARTNER_STATE_AGGREGATION ;
 int LACP_ACTOR_PARTNER_STATE_LACP_ACTIVITY ;
 int LACP_ACTOR_PARTNER_STATE_LACP_TIMEOUT ;
 int LACP_ACTOR_PARTNER_STATE_SYNCHRONIZATION ;

__attribute__((used)) static __inline__ lacp_actor_partner_state
updateNTTBits(lacp_actor_partner_state s)
{
    return (s & (LACP_ACTOR_PARTNER_STATE_LACP_ACTIVITY
   | LACP_ACTOR_PARTNER_STATE_LACP_TIMEOUT
   | LACP_ACTOR_PARTNER_STATE_AGGREGATION
   | LACP_ACTOR_PARTNER_STATE_SYNCHRONIZATION));
}
