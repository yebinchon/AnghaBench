#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uipdev_s ;
typedef  int /*<<< orphan*/  u16 ;
struct uip_netif {int dummy; } ;
struct uip_ip_addr {int dummy; } ;
struct tcpip_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct dbginterface {int fhndl; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  wait; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int UIP_TCPIP_SOCKS ; 
 int /*<<< orphan*/  closetcpip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int listensock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  netif ; 
 struct dbginterface netif_device ; 
 int /*<<< orphan*/  opentcpip ; 
 int /*<<< orphan*/  readtcpip ; 
 scalar_t__ FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  tcpip_socks ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uip_bba_init ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  uip_ipinput ; 
 struct uip_netif* FUNC9 (int /*<<< orphan*/ *,struct uip_ip_addr*,struct uip_ip_addr*,struct uip_ip_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct uip_netif*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  waittcpip ; 
 int /*<<< orphan*/  writetcpip ; 

struct dbginterface* FUNC14(struct uip_ip_addr *localip,struct uip_ip_addr *netmask,struct uip_ip_addr *gateway,u16 port)
{
	uipdev_s hbba;
	struct uip_netif *pnet ;
	struct sockaddr_in name;
	socklen_t namelen = sizeof(struct sockaddr);

	FUNC2();
	FUNC8();
	FUNC12();
	FUNC10();
	FUNC13();

	FUNC0(tcpip_socks,0,(UIP_TCPIP_SOCKS*sizeof(struct tcpip_sock)));

	hbba = FUNC7(&netif);
	pnet = FUNC9(&netif,localip,netmask,gateway,hbba,uip_bba_init,uip_ipinput);
	if(pnet) {
		FUNC11(pnet);

		listensock = FUNC6();
		if(listensock<0) return NULL;

		name.sin_addr.s_addr = INADDR_ANY;
		name.sin_port = FUNC1(port);
		name.sin_family = AF_INET;

		if(FUNC3(listensock,(struct sockaddr*)&name,&namelen)<0){
			FUNC4(listensock);
			listensock = -1;
			return NULL;
		}
		if(FUNC5(listensock,1)<0) {
			FUNC4(listensock);
			listensock = -1;
			return NULL;
		}

		netif_device.fhndl = -1;
		netif_device.wait = waittcpip;
		netif_device.open = opentcpip;
		netif_device.close = closetcpip;
		netif_device.read = readtcpip;
		netif_device.write = writetcpip;

		return &netif_device;
	}
	return NULL;
}