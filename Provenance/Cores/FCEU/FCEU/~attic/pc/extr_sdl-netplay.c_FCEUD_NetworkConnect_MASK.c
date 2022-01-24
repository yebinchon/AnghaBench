#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  Uint16 ;
struct TYPE_6__ {void* port; } ;
typedef  void* TCPsocket ;
typedef  TYPE_1__ IPaddress ;

/* Variables and functions */
 int /*<<< orphan*/  LocalPortTCP ; 
 int /*<<< orphan*/  LocalPortUDP ; 
 int /*<<< orphan*/  RemotePortTCP ; 
 void* RemotePortUDP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/ * ServerHost ; 
 void* Socket ; 
 int /*<<< orphan*/  TCPSocket ; 
 int /*<<< orphan*/  UDPSocket ; 
 void* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int magic ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int netplay ; 
 int /*<<< orphan*/  set ; 
 int uport ; 

int FUNC17(void)
{
 IPaddress rip;

 FUNC1();

 if(netplay==1)	/* Be a server. */
 {
  TCPsocket tmp;
  Uint16 p=LocalPortUDP;

  FUNC2(&rip,NULL,LocalPortTCP);

  UDPSocket=FUNC11(&p);

  tmp=FUNC6(&rip);
  Socket=FUNC3(&tmp);

  FUNC16(&rip,FUNC5(Socket),sizeof(IPaddress));

  {
   uint8 buf[12];
   uint32 player=1;

   magic=FUNC13();

   FUNC12(buf,uport);
   FUNC12(buf+4,1);
   FUNC12(buf+8,magic);

   FUNC8(Socket, buf, 12);

   /* Get the UDP port the client is waiting for data on. */
   FUNC7(Socket, buf, 2);
   RemotePortUDP=FUNC14(buf);
  }
 }
 else		/* Be a client	*/
 {
  FUNC2(&rip,ServerHost,RemotePortTCP);
  Socket=FUNC6(&rip);

  {
   Uint16 p=LocalPortUDP;
   uint8 buf[12];
  
   UDPSocket=FUNC11(&p);

   /* Now, tell the server what local UDP port it should send to. */
   FUNC15(buf,p);
   FUNC8(Socket, buf, 4);
 
   /* Get the UDP port from the server we should send data to. */
   FUNC7(Socket, buf, 12);
   RemotePortUDP=FUNC14(buf);
   magic=FUNC14(buf+8);
  }
  set=FUNC0(1);
  FUNC4(set,TCPSocket);
  FUNC9(set,UDPSocket);
 }	// End client connect code.

 rip.port=RemotePortUDP;
 FUNC10(UDPSocket, 0, &rip);
}