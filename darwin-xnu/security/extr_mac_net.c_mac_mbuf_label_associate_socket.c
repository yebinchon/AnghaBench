
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsocket {int dummy; } ;
struct socket {int so_label; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct xsocket*,int ,struct mbuf*,struct label*) ;
 struct label* mac_mbuf_to_label (struct mbuf*) ;
 int mbuf_label_associate_socket ;
 int sotoxsocket (struct socket*,struct xsocket*) ;

void
mac_mbuf_label_associate_socket(struct socket *socket, struct mbuf *mbuf)
{
 struct label *label;
 struct xsocket xso;



 label = mac_mbuf_to_label(mbuf);

 sotoxsocket(socket, &xso);
 MAC_PERFORM(mbuf_label_associate_socket, &xso, socket->so_label,
      mbuf, label);
}
