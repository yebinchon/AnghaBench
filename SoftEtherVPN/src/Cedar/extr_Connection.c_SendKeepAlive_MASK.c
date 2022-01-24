#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  USHORT ;
typedef  size_t UINT ;
typedef  size_t UCHAR ;
struct TYPE_8__ {TYPE_2__* Session; } ;
struct TYPE_7__ {int TotalSendSize; int TotalSendSizeReal; TYPE_1__* UdpAccel; scalar_t__ UseUdpAcceleration; } ;
struct TYPE_6__ {scalar_t__ MyPortByNatTServer; } ;
typedef  int /*<<< orphan*/  TCPSOCK ;
typedef  TYPE_2__ SESSION ;
typedef  TYPE_3__ CONNECTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 size_t KEEP_ALIVE_MAGIC ; 
 size_t FUNC4 (size_t,int) ; 
 size_t MAX_KEEPALIVE_SIZE ; 
 size_t* FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,size_t*,size_t) ; 
 size_t FUNC8 () ; 

void FUNC9(CONNECTION *c, TCPSOCK *ts)
{
	UINT size, i, num;
	UINT size_be;
	SESSION *s;
	UCHAR *buf;
	bool insert_natt_port = false;
	// Validate arguments
	if (c == NULL || ts == NULL)
	{
		return;
	}

	s = c->Session;

	size = FUNC8() % MAX_KEEPALIVE_SIZE;
	num = KEEP_ALIVE_MAGIC;

	if (s != NULL && s->UseUdpAcceleration && s->UdpAccel != NULL)
	{
		if (s->UdpAccel->MyPortByNatTServer != 0)
		{
			size = FUNC4(size, (FUNC6(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE) + sizeof(USHORT)));

			insert_natt_port = true;
		}
	}

	buf = FUNC5(size);

	for (i = 0;i < size;i++)
	{
		buf[i] = FUNC8();
	}

	if (insert_natt_port)
	{
		USHORT myport = FUNC1((USHORT)s->UdpAccel->MyPortByNatTServer);

		FUNC0(buf, UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE, FUNC6(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE));
		FUNC0(buf + FUNC6(UDP_NAT_T_PORT_SIGNATURE_IN_KEEP_ALIVE), &myport, sizeof(USHORT));
	}

	num = FUNC2(num);
	size_be = FUNC2(size);
	FUNC7(c->Session, ts, &num, sizeof(UINT));
	FUNC7(c->Session, ts, &size_be, sizeof(UINT));
	FUNC7(c->Session, ts, buf, size);

	c->Session->TotalSendSize += sizeof(UINT) * 2 + size;
	c->Session->TotalSendSizeReal += sizeof(UINT) * 2 + size;

	FUNC3(buf);
}