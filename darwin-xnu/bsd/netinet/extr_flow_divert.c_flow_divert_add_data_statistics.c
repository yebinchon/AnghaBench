
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int dummy; } ;
struct flow_divert_pcb {int so; } ;
typedef int Boolean ;


 int FALSE ;
 int IFNET_IS_CELLULAR (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIFI (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIRED (struct ifnet*) ;
 int INP_ADD_STAT (struct inpcb*,int,int,int,int ,int) ;
 int inp_set_activity_bitmap (struct inpcb*) ;
 int rxbytes ;
 int rxpackets ;
 struct inpcb* sotoinpcb (int ) ;
 int txbytes ;
 int txpackets ;

__attribute__((used)) static void
flow_divert_add_data_statistics(struct flow_divert_pcb *fd_cb, int data_len, Boolean send)
{
 struct inpcb *inp = ((void*)0);
 struct ifnet *ifp = ((void*)0);
 Boolean cell = FALSE;
 Boolean wifi = FALSE;
 Boolean wired = FALSE;

 inp = sotoinpcb(fd_cb->so);
 if (inp == ((void*)0)) {
  return;
 }

 ifp = inp->inp_last_outifp;
 if (ifp != ((void*)0)) {
  cell = IFNET_IS_CELLULAR(ifp);
  wifi = (!cell && IFNET_IS_WIFI(ifp));
  wired = (!wifi && IFNET_IS_WIRED(ifp));
 }

 if (send) {
  INP_ADD_STAT(inp, cell, wifi, wired, txpackets, 1);
  INP_ADD_STAT(inp, cell, wifi, wired, txbytes, data_len);
 } else {
  INP_ADD_STAT(inp, cell, wifi, wired, rxpackets, 1);
  INP_ADD_STAT(inp, cell, wifi, wired, rxbytes, data_len);
 }
 inp_set_activity_bitmap(inp);
}
