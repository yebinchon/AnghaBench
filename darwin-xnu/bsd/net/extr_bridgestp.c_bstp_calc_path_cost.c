
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_baudrate; } ;
struct bstp_port {int bp_flags; int bp_path_cost; scalar_t__ bp_if_link_state; scalar_t__ bp_protover; struct ifnet* bp_ifp; } ;


 int BSTP_DEFAULT_PATH_COST ;
 int BSTP_MAX_PATH_COST ;
 int BSTP_PORT_ADMCOST ;
 int BSTP_PORT_PNDCOST ;
 scalar_t__ BSTP_PROTO_STP ;
 scalar_t__ LINK_STATE_DOWN ;

__attribute__((used)) static uint32_t
bstp_calc_path_cost(struct bstp_port *bp)
{
 struct ifnet *ifp = bp->bp_ifp;
 uint32_t path_cost;


 if (bp->bp_flags & BSTP_PORT_ADMCOST)
  return bp->bp_path_cost;

 if (bp->bp_if_link_state == LINK_STATE_DOWN) {

  bp->bp_flags |= BSTP_PORT_PNDCOST;
  return (BSTP_DEFAULT_PATH_COST);
 }

 if (ifp->if_baudrate < 1000)
  return (BSTP_DEFAULT_PATH_COST);


 path_cost = 20000000000ULL / (ifp->if_baudrate / 1000);

 if (path_cost > BSTP_MAX_PATH_COST)
  path_cost = BSTP_MAX_PATH_COST;


 if (bp->bp_protover == BSTP_PROTO_STP && path_cost > 65535)
  path_cost = 65535;

 return (path_cost);
}
