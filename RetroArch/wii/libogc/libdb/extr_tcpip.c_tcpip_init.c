
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uipdev_s ;
typedef int u16 ;
struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
struct tcpip_sock {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_family; int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct dbginterface {int fhndl; int write; int read; int close; int open; int wait; } ;
typedef int socklen_t ;


 int AF_INET ;
 int INADDR_ANY ;
 int UIP_MEMSET (int ,int ,int) ;
 int UIP_TCPIP_SOCKS ;
 int closetcpip ;
 int htons (int ) ;
 int listensock ;
 int memr_init () ;
 int netif ;
 struct dbginterface netif_device ;
 int opentcpip ;
 int readtcpip ;
 scalar_t__ tcpip_bind (int,struct sockaddr*,int*) ;
 int tcpip_close (int) ;
 scalar_t__ tcpip_listen (int,int) ;
 int tcpip_socket () ;
 int tcpip_socks ;
 int uip_bba_create (int *) ;
 int uip_bba_init ;
 int uip_ipinit () ;
 int uip_ipinput ;
 struct uip_netif* uip_netif_add (int *,struct uip_ip_addr*,struct uip_ip_addr*,struct uip_ip_addr*,int ,int ,int ) ;
 int uip_netif_init () ;
 int uip_netif_setdefault (struct uip_netif*) ;
 int uip_pbuf_init () ;
 int uip_tcp_init () ;
 int waittcpip ;
 int writetcpip ;

struct dbginterface* tcpip_init(struct uip_ip_addr *localip,struct uip_ip_addr *netmask,struct uip_ip_addr *gateway,u16 port)
{
 uipdev_s hbba;
 struct uip_netif *pnet ;
 struct sockaddr_in name;
 socklen_t namelen = sizeof(struct sockaddr);

 memr_init();
 uip_ipinit();
 uip_pbuf_init();
 uip_netif_init();
 uip_tcp_init();

 UIP_MEMSET(tcpip_socks,0,(UIP_TCPIP_SOCKS*sizeof(struct tcpip_sock)));

 hbba = uip_bba_create(&netif);
 pnet = uip_netif_add(&netif,localip,netmask,gateway,hbba,uip_bba_init,uip_ipinput);
 if(pnet) {
  uip_netif_setdefault(pnet);

  listensock = tcpip_socket();
  if(listensock<0) return ((void*)0);

  name.sin_addr.s_addr = INADDR_ANY;
  name.sin_port = htons(port);
  name.sin_family = AF_INET;

  if(tcpip_bind(listensock,(struct sockaddr*)&name,&namelen)<0){
   tcpip_close(listensock);
   listensock = -1;
   return ((void*)0);
  }
  if(tcpip_listen(listensock,1)<0) {
   tcpip_close(listensock);
   listensock = -1;
   return ((void*)0);
  }

  netif_device.fhndl = -1;
  netif_device.wait = waittcpip;
  netif_device.open = opentcpip;
  netif_device.close = closetcpip;
  netif_device.read = readtcpip;
  netif_device.write = writetcpip;

  return &netif_device;
 }
 return ((void*)0);
}
