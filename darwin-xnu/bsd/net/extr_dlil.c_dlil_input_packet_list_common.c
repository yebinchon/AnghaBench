
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int32_t ;
struct TYPE_3__ {char* pkt_hdr; int pkt_flags; int csum_flags; int csum_rx_start; scalar_t__ csum_data; struct ifnet* rcvif; } ;
struct mbuf {char* m_data; int m_flags; struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_eflags; int (* if_demux ) (struct ifnet*,struct mbuf*,char*,scalar_t__*) ;int if_type; int if_flags; scalar_t__ if_updatemcasts; int if_imcasts; int * if_bridge; } ;
struct if_proto {scalar_t__ protocol_family; struct ifnet* ifp; } ;
struct ether_header {int ether_type; } ;
typedef scalar_t__ protocol_family_t ;
typedef struct mbuf* mbuf_t ;
typedef struct ifnet* ifnet_t ;
typedef scalar_t__ ifnet_model_t ;
typedef char* caddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int ip6s_clat464_in_drop; int ip6s_clat464_in_v4_drop; } ;


 int CSUM_DATA_VALID ;
 int CSUM_PARTIAL ;
 int CSUM_VLAN_TAG_VALID ;
 int DBG_FNC_DLIL_INPUT ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EJUSTRETURN ;
 int ETHERTYPE_IP ;
 scalar_t__ ETHERTYPE_IPV6 ;
 int ETHER_HDR_LEN ;
 int IFEF_RXPOLL ;
 int IFF_LOOPBACK ;
 scalar_t__ IFNET_MODEL_INPUT_POLL_ON ;


 scalar_t__ IS_INTF_CLAT46 (struct ifnet*) ;
 int KERNEL_DEBUG (int,int ,int ,int ,int ,int ) ;
 int MBUF_INPUT_CHECK (struct mbuf*,struct ifnet*) ;
 int M_BCAST ;
 int M_LEADINGSPACE (struct mbuf*) ;
 int M_MCAST ;
 int M_PROMISC ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int PKTF_IFAINFO ;
 int PKTF_LOOP ;
 int PKTF_TS_VALID ;
 int VERIFY (int ) ;
 int atomic_add_64 (int *,int) ;
 int bcopy (char*,char*,int ) ;
 scalar_t__ clat_debug ;
 int dlil_clat64 (struct ifnet*,scalar_t__*,struct mbuf**) ;
 int dlil_ifproto_input (struct if_proto*,struct mbuf*) ;
 int dlil_input_cksum_dbg (struct ifnet*,struct mbuf*,char*,scalar_t__) ;
 int dlil_interface_filters_input (struct ifnet*,struct mbuf**,char**,scalar_t__) ;
 scalar_t__ dlil_is_clat_needed (scalar_t__,struct mbuf*) ;
 struct if_proto* find_attached_proto (struct ifnet*,scalar_t__) ;
 int htons (int ) ;
 scalar_t__ hwcksum_dbg ;
 int hwcksum_in_invalidated ;
 scalar_t__ if_mcasts_update (struct ifnet*) ;
 int if_proto_free (struct if_proto*) ;
 int if_proto_ref (struct if_proto*) ;
 int if_rxpoll_interval_pkts ;
 int ifnet_decr_iorefcnt (struct ifnet*) ;
 int ifnet_is_attached (struct ifnet*,int) ;
 int ifnet_lock_done (struct ifnet*) ;
 int ifnet_lock_shared (struct ifnet*) ;
 int ifnet_poll (struct ifnet*) ;
 int ifp_inc_traffic_class_in (struct ifnet*,struct mbuf*) ;
 TYPE_2__ ip6stat ;
 struct ifnet* lo_ifp ;
 int m_classifier_init (struct mbuf*,int) ;
 int m_free (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mbuf_data (struct mbuf*) ;
 scalar_t__ mbuf_datastart (struct mbuf*) ;
 scalar_t__ ntohs (int ) ;
 int pktap_input (struct ifnet*,scalar_t__,struct mbuf*,char*) ;
 int stub1 (struct ifnet*,struct mbuf*,char*,scalar_t__*) ;

__attribute__((used)) static void
dlil_input_packet_list_common(struct ifnet *ifp_param, struct mbuf *m,
    u_int32_t cnt, ifnet_model_t mode, boolean_t ext)
{
 int error = 0;
 protocol_family_t protocol_family;
 mbuf_t next_packet;
 ifnet_t ifp = ifp_param;
 char *frame_header = ((void*)0);
 struct if_proto *last_ifproto = ((void*)0);
 mbuf_t pkt_first = ((void*)0);
 mbuf_t *pkt_next = ((void*)0);
 u_int32_t poll_thresh = 0, poll_ival = 0;

 KERNEL_DEBUG(DBG_FNC_DLIL_INPUT | DBG_FUNC_START, 0, 0, 0, 0, 0);

 if (ext && mode == IFNET_MODEL_INPUT_POLL_ON && cnt > 1 &&
     (poll_ival = if_rxpoll_interval_pkts) > 0)
  poll_thresh = cnt;

 while (m != ((void*)0)) {
  struct if_proto *ifproto = ((void*)0);
  int iorefcnt = 0;
  uint32_t pktf_mask;

  if (ifp_param == ((void*)0))
   ifp = m->m_pkthdr.rcvif;

  if ((ifp->if_eflags & IFEF_RXPOLL) && poll_thresh != 0 &&
      poll_ival > 0 && (--poll_thresh % poll_ival) == 0)
   ifnet_poll(ifp);


  MBUF_INPUT_CHECK(m, ifp);

  next_packet = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
  frame_header = m->m_pkthdr.pkt_hdr;
  m->m_pkthdr.pkt_hdr = ((void*)0);






  if (ifp != lo_ifp) {
   if (!ifnet_is_attached(ifp, 1)) {
    m_freem(m);
    goto next;
   }
   iorefcnt = 1;



   pktf_mask = PKTF_TS_VALID;
  } else {





   pktf_mask = (PKTF_LOOP|PKTF_IFAINFO);
  }


  m_classifier_init(m, pktf_mask);

  ifp_inc_traffic_class_in(ifp, m);


  ifnet_lock_shared(ifp);
  error = (*ifp->if_demux)(ifp, m, frame_header,
      &protocol_family);
  ifnet_lock_done(ifp);
  if (error != 0) {
   if (error == EJUSTRETURN)
    goto next;
   protocol_family = 0;
  }

  pktap_input(ifp, protocol_family, m, frame_header);


  if (protocol_family == PF_INET && IS_INTF_CLAT46(ifp)) {
   m_freem(m);
   ip6stat.ip6s_clat464_in_v4_drop++;
   goto next;
  }


  if (protocol_family == PF_INET6 && IS_INTF_CLAT46(ifp)
      && dlil_is_clat_needed(protocol_family, m)) {
   char *data = ((void*)0);
   struct ether_header eh;
   struct ether_header *ehp = ((void*)0);

   if (ifp->if_type == 128) {
    ehp = (struct ether_header *)(void *)frame_header;

    if (ntohs(ehp->ether_type) != ETHERTYPE_IPV6)
     goto skip_clat;


    bcopy(frame_header, (caddr_t)&eh, ETHER_HDR_LEN);
   }
   error = dlil_clat64(ifp, &protocol_family, &m);
   data = (char *) mbuf_data(m);
   if (error != 0) {
    m_freem(m);
    ip6stat.ip6s_clat464_in_drop++;
    goto next;
   }

   if (protocol_family != PF_INET)
    goto skip_clat;


   switch (ifp->if_type) {
   case 129:
    frame_header = data;
    break;
   case 128:




    if (M_LEADINGSPACE(m) < ETHER_HDR_LEN) {
     m_free(m);
     ip6stat.ip6s_clat464_in_drop++;
     goto next;
    }





    frame_header = data - ETHER_HDR_LEN;
    eh.ether_type = htons(ETHERTYPE_IP);
    bcopy((caddr_t)&eh, frame_header, ETHER_HDR_LEN);
    break;
   }
  }
skip_clat:
  if (hwcksum_dbg != 0 && !(ifp->if_flags & IFF_LOOPBACK) &&
      !(m->m_pkthdr.pkt_flags & PKTF_LOOP))
   dlil_input_cksum_dbg(ifp, m, frame_header,
       protocol_family);
  if (ifp->if_bridge == ((void*)0) && (m->m_pkthdr.csum_flags &
      (CSUM_DATA_VALID | CSUM_PARTIAL)) ==
      (CSUM_DATA_VALID | CSUM_PARTIAL)) {
   int adj;
   if (frame_header == ((void*)0) ||
       frame_header < (char *)mbuf_datastart(m) ||
       frame_header > (char *)m->m_data ||
       (adj = (m->m_data - frame_header)) >
       m->m_pkthdr.csum_rx_start) {
    m->m_pkthdr.csum_data = 0;
    m->m_pkthdr.csum_flags &= ~CSUM_DATA_VALID;
    hwcksum_in_invalidated++;
   } else {
    m->m_pkthdr.csum_rx_start -= adj;
   }
  }

  if (clat_debug)
   pktap_input(ifp, protocol_family, m, frame_header);

  if (m->m_flags & (M_BCAST|M_MCAST))
   atomic_add_64(&ifp->if_imcasts, 1);


  if ((m->m_pkthdr.csum_flags & CSUM_VLAN_TAG_VALID) == 0) {
   error = dlil_interface_filters_input(ifp, &m,
       &frame_header, protocol_family);
   if (error != 0) {
    if (error != EJUSTRETURN)
     m_freem(m);
    goto next;
   }
  }
  if (error != 0 || ((m->m_flags & M_PROMISC) != 0)) {
   m_freem(m);
   goto next;
  }


  if (protocol_family == 0) {
   ifproto = ((void*)0);
  } else if (last_ifproto != ((void*)0) && last_ifproto->ifp == ifp &&
      (last_ifproto->protocol_family == protocol_family)) {
   VERIFY(ifproto == ((void*)0));
   ifproto = last_ifproto;
   if_proto_ref(last_ifproto);
  } else {
   VERIFY(ifproto == ((void*)0));
   ifnet_lock_shared(ifp);

   ifproto = find_attached_proto(ifp, protocol_family);
   ifnet_lock_done(ifp);
  }
  if (ifproto == ((void*)0)) {

   m_freem(m);
   goto next;
  }
  if (ifproto != last_ifproto) {
   if (last_ifproto != ((void*)0)) {

    dlil_ifproto_input(last_ifproto, pkt_first);
    pkt_first = ((void*)0);
    if_proto_free(last_ifproto);
   }
   last_ifproto = ifproto;
   if_proto_ref(ifproto);
  }

  m->m_pkthdr.pkt_hdr = frame_header;
  if (pkt_first == ((void*)0)) {
   pkt_first = m;
  } else {
   *pkt_next = m;
  }
  pkt_next = &m->m_nextpkt;

next:
  if (next_packet == ((void*)0) && last_ifproto != ((void*)0)) {

   dlil_ifproto_input(last_ifproto, pkt_first);
   if_proto_free(last_ifproto);
   last_ifproto = ((void*)0);
  }
  if (ifproto != ((void*)0)) {
   if_proto_free(ifproto);
   ifproto = ((void*)0);
  }

  m = next_packet;


  if (ifp->if_updatemcasts > 0 && if_mcasts_update(ifp) == 0)
   ifp->if_updatemcasts = 0;
  if (iorefcnt == 1)
   ifnet_decr_iorefcnt(ifp);
 }

 KERNEL_DEBUG(DBG_FNC_DLIL_INPUT | DBG_FUNC_END, 0, 0, 0, 0, 0);
}
