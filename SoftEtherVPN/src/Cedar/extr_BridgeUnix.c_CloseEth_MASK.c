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
struct CAPTUREBLOCK {TYPE_1__* Buf; } ;
struct TYPE_6__ {int Socket; int SocketBsdIf; struct TYPE_6__* Title; struct TYPE_6__* Name; int /*<<< orphan*/  Cancel; struct TYPE_6__* Buffer; int /*<<< orphan*/  Queue; int /*<<< orphan*/  CaptureThread; int /*<<< orphan*/  Pcap; int /*<<< orphan*/ * Tap; scalar_t__ IsRawIpMode; } ;
typedef  TYPE_1__ ETH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct CAPTUREBLOCK*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct CAPTUREBLOCK* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(ETH *e)
{
	// Validate arguments
	if (e == NULL)
	{
		return;
	}

	if (e->IsRawIpMode)
	{
		FUNC0(e);

		return;
	}

	if (e->Tap != NULL)
	{
#ifndef	NO_VLAN
		FUNC4(e->Tap);
#endif	// NO_VLAN
	}

#ifdef BRIDGE_PCAP
	{
		struct CAPTUREBLOCK *block;
		pcap_breakloop(e->Pcap);
		WaitThread(e->CaptureThread, INFINITE);
		ReleaseThread(e->CaptureThread);
		pcap_close(e->Pcap);
		while (block = GetNext(e->Queue)){
			Free(block->Buf);
			FreeCaptureBlock(block);
		}
		ReleaseQueue(e->Queue);
	}
#endif // BRIDGE_PCAP

#ifdef BRIDGE_BPF
#ifdef BRIDGE_BPF_THREAD
	{
		struct CAPTUREBLOCK *block;
		int fd = e->Socket;
		e->Socket = INVALID_SOCKET;
		WaitThread(e->CaptureThread, INFINITE);
		ReleaseThread(e->CaptureThread);
		e->Socket = fd; // restore to close after
		while (block = GetNext(e->Queue)){
			Free(block->Buf);
			FreeCaptureBlock(block);
		}
		ReleaseQueue(e->Queue);
	}
#else // BRIDGE_BPF_THREAD
	Free(e->Buffer);
#endif // BRIDGE_BPF_THREAD
#endif // BRIDGE_BPF

	FUNC6(e->Cancel);
	FUNC2(e->Name);
	FUNC2(e->Title);

	// Restore MTU value
	FUNC1(e, 0);

	if (e->Socket != INVALID_SOCKET)
	{
#if defined(BRIDGE_BPF) || defined(BRIDGE_PCAP) || defined(UNIX_SOLARIS)
		close(e->Socket);
#else // BRIDGE_PCAP
		FUNC11(e->Socket);
#endif // BRIDGE_PCAP
#if defined(BRIDGE_BPF) || defined(UNIX_SOLARIS)
		if (e->SocketBsdIf != INVALID_SOCKET)
		{
			close(e->SocketBsdIf);
		}
#endif	// BRIDGE_BPF || UNIX_SOLARIS
	}

	FUNC2(e);
}