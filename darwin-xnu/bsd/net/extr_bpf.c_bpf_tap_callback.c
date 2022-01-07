
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int bpf_tap_mbuf (struct ifnet*,int ,struct mbuf*,int *,int ,int ) ;
 int * mbuf_pkthdr_rcvif (struct mbuf*) ;

__attribute__((used)) static int bpf_tap_callback(struct ifnet *ifp, struct mbuf *m)
{
 bpf_tap_mbuf(ifp, 0, m, ((void*)0), 0, mbuf_pkthdr_rcvif(m) == ((void*)0));

 return (0);
}
