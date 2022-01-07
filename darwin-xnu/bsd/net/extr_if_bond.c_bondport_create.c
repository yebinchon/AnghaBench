
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int32_t ;
struct ifnet {int dummy; } ;
typedef int lacp_port_priority ;
typedef scalar_t__ lacp_actor_partner_state ;
typedef TYPE_1__* bondport_ref ;
struct TYPE_9__ {int ifdm_current; } ;
struct TYPE_8__ {scalar_t__ po_actor_state; int po_priority; int po_mux_state; int po_receive_state; int * po_transmit_timer; int * po_wait_while_timer; int * po_periodic_timer; int * po_current_while_timer; int po_media_info; struct ifnet* po_ifp; TYPE_2__ po_devmtu; int po_name; int po_multicast; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_BOND ;
 int M_WAITOK ;
 int M_ZERO ;
 int MuxState_none ;
 int ReceiveState_none ;
 TYPE_1__* _MALLOC (int,int ,int) ;
 int bondport_free (TYPE_1__*) ;
 char* bondport_get_name (TYPE_1__*) ;
 int bondport_timer_process_func ;
 void* devtimer_create (int ,TYPE_1__*) ;
 int ifnet_mtu (struct ifnet*) ;
 char* ifnet_name (struct ifnet*) ;
 int ifnet_unit (struct ifnet*) ;
 int interface_media_info (struct ifnet*) ;
 scalar_t__ lacp_actor_partner_state_set_active_lacp (scalar_t__) ;
 scalar_t__ lacp_actor_partner_state_set_aggregatable (scalar_t__) ;
 scalar_t__ lacp_actor_partner_state_set_short_timeout (scalar_t__) ;
 int multicast_list_init (int *) ;
 int printf (char*,...) ;
 int siocgifdevmtu (struct ifnet*,TYPE_2__*) ;
 scalar_t__ snprintf (int ,int,char*,char*,int ) ;

__attribute__((used)) static bondport_ref
bondport_create(struct ifnet * port_ifp, lacp_port_priority priority,
  int active, int short_timeout, int * ret_error)
{
    int error = 0;
    bondport_ref p = ((void*)0);
    lacp_actor_partner_state s;

    *ret_error = 0;
    p = _MALLOC(sizeof(*p), M_BOND, M_WAITOK | M_ZERO);
    if (p == ((void*)0)) {
 *ret_error = ENOMEM;
 return (((void*)0));
    }
    multicast_list_init(&p->po_multicast);
    if ((u_int32_t)snprintf(p->po_name, sizeof(p->po_name), "%s%d",
    ifnet_name(port_ifp), ifnet_unit(port_ifp))
 >= sizeof(p->po_name)) {
 printf("if_bond: name too large\n");
 *ret_error = EINVAL;
 goto failed;
    }
    error = siocgifdevmtu(port_ifp, &p->po_devmtu);
    if (error != 0) {
 printf("if_bond: SIOCGIFDEVMTU %s failed, %d\n",
        bondport_get_name(p), error);
 goto failed;
    }

    p->po_devmtu.ifdm_current = ifnet_mtu(port_ifp);
    p->po_ifp = port_ifp;
    p->po_media_info = interface_media_info(port_ifp);
    p->po_current_while_timer = devtimer_create(bondport_timer_process_func, p);
    if (p->po_current_while_timer == ((void*)0)) {
 *ret_error = ENOMEM;
 goto failed;
    }
    p->po_periodic_timer = devtimer_create(bondport_timer_process_func, p);
    if (p->po_periodic_timer == ((void*)0)) {
 *ret_error = ENOMEM;
 goto failed;
    }
    p->po_wait_while_timer = devtimer_create(bondport_timer_process_func, p);
    if (p->po_wait_while_timer == ((void*)0)) {
 *ret_error = ENOMEM;
 goto failed;
    }
    p->po_transmit_timer = devtimer_create(bondport_timer_process_func, p);
    if (p->po_transmit_timer == ((void*)0)) {
 *ret_error = ENOMEM;
 goto failed;
    }
    p->po_receive_state = ReceiveState_none;
    p->po_mux_state = MuxState_none;
    p->po_priority = priority;
    s = 0;
    s = lacp_actor_partner_state_set_aggregatable(s);
    if (short_timeout) {
 s = lacp_actor_partner_state_set_short_timeout(s);
    }
    if (active) {
 s = lacp_actor_partner_state_set_active_lacp(s);
    }
    p->po_actor_state = s;
    return (p);

 failed:
    bondport_free(p);
    return (((void*)0));
}
