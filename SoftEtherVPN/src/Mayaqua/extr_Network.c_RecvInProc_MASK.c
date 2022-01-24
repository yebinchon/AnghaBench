#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_12__ {int /*<<< orphan*/  Event; } ;
struct TYPE_11__ {scalar_t__ Type; int Connected; int AsyncMode; TYPE_4__* RecvTube; int /*<<< orphan*/ * InProcRecvFifo; TYPE_4__* SendTube; scalar_t__ Disconnecting; } ;
struct TYPE_10__ {scalar_t__ DataSize; scalar_t__ Data; } ;
typedef  TYPE_1__ TUBEDATA ;
typedef  TYPE_2__ SOCK ;
typedef  int /*<<< orphan*/  FIFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 scalar_t__ SOCK_INPROC ; 
 scalar_t__ SOCK_LATER ; 
 scalar_t__ FUNC6 () ; 
 TYPE_1__* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

UINT FUNC10(SOCK *sock, void *data, UINT size)
{
	FIFO *f;
	UINT ret;
	UINT timeout;
	UINT64 giveup_time;
	TUBEDATA *d = NULL;
	if (sock == NULL || sock->Type != SOCK_INPROC || sock->Disconnecting || sock->Connected == false)
	{
		return 0;
	}

	if (FUNC4(sock->SendTube) == false)
	{
		return 0;
	}

	f = sock->InProcRecvFifo;
	if (f == NULL)
	{
		return 0;
	}

	// If there is data in the FIFO, return it immediately
	ret = FUNC5(f, data, size);
	if (ret != 0)
	{
		return ret;
	}

	timeout = FUNC3(sock);

	giveup_time = FUNC6() + (UINT)timeout;

	// When there is no data in the FIFO, read the next data from the tube
	d = NULL;

	while (true)
	{
		UINT64 now = 0;
		UINT interval;

		if (sock->AsyncMode == false)
		{
			now = FUNC6();

			if (now >= giveup_time)
			{
				break;
			}
		}

		d = FUNC7(sock->RecvTube);

		if (d != NULL)
		{
			break;
		}

		if (FUNC4(sock->RecvTube) == false)
		{
			break;
		}

		if (sock->AsyncMode)
		{
			break;
		}

		interval = (UINT)(giveup_time - now);

		FUNC8(sock->RecvTube->Event, interval);
	}

	if (d == NULL)
	{
		if (FUNC4(sock->RecvTube) == false)
		{
			return 0;
		}

		if (sock->AsyncMode == false)
		{
			// If a timeout occurs in synchronous mode, disconnect ir
			FUNC1(sock);

			return 0;
		}
		else
		{
			// If a timeout occurs in asynchronous mode, returns the blocking error 
			return SOCK_LATER;
		}
	}
	else
	{
		// If the received data is larger than the requested size, write the rest to FIFO
		if (d->DataSize > size)
		{
			FUNC9(f, ((UCHAR *)d->Data) + size, d->DataSize - size);
			ret = size;
		}
		else
		{
			ret = d->DataSize;
		}

		FUNC0(data, d->Data, ret);

		FUNC2(d);

		return ret;
	}
}