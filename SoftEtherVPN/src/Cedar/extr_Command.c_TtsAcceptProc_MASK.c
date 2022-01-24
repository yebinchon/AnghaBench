#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT64 ;
typedef  int UINT ;
struct TYPE_16__ {int /*<<< orphan*/  RemotePort; int /*<<< orphan*/  RemoteHostname; } ;
struct TYPE_15__ {int Halt; int /*<<< orphan*/  Print; int /*<<< orphan*/  Param; scalar_t__ IdSeed; int /*<<< orphan*/  WorkerList; } ;
struct TYPE_14__ {scalar_t__ Id; int /*<<< orphan*/  LastCommTime; scalar_t__ GiveupSpan; TYPE_4__* Sock; } ;
struct TYPE_13__ {int NewSocketArrived; int /*<<< orphan*/  SockEvent; int /*<<< orphan*/  TtsSockList; } ;
typedef  TYPE_1__ TTS_WORKER ;
typedef  TYPE_2__ TTS_SOCK ;
typedef  TYPE_3__ TTS ;
typedef  TYPE_4__ SOCK ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

void FUNC14(TTS *tts, SOCK *listen_socket)
{
	wchar_t tmp[MAX_SIZE];
	UINT seed = 0;
	// Validate arguments
	if (tts == NULL || listen_socket == NULL)
	{
		return;
	}

	while (tts->Halt == false)
	{
		SOCK *s;
		// Accept
		s = FUNC0(listen_socket);

		if (s == NULL)
		{
			if (tts->Halt == false)
			{
				FUNC7(10);
			}
			continue;
		}
		else
		{
			UINT num, i;
			TTS_WORKER *w;

			// Connected from the client
			FUNC1(s, true);

			// Choose a worker thread
			num = FUNC4(tts->WorkerList);

			i = seed % num;

			seed++;

			w = FUNC3(tts->WorkerList, i);

			w->NewSocketArrived = true;
			FUNC5(w->TtsSockList);
			{
				TTS_SOCK *ts = FUNC12(sizeof(TTS_SOCK));

				ts->Id = (++tts->IdSeed);
				ts->Sock = s;

				ts->GiveupSpan = (UINT64)(10 * 60 * 1000);
				ts->LastCommTime = FUNC8();

				FUNC10(tmp, sizeof(tmp), FUNC13("TTS_ACCEPTED"), ts->Id,
					s->RemoteHostname, s->RemotePort);
				FUNC9(tts->Param, tts->Print, tmp);

				FUNC2(w->TtsSockList, ts);
				w->NewSocketArrived = true;
			}
			FUNC11(w->TtsSockList);

			FUNC6(w->SockEvent);
		}
	}
}