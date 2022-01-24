#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {int /*<<< orphan*/  ref; } ;
struct TYPE_13__ {int /*<<< orphan*/  SockEvent; int /*<<< orphan*/ * WorkThread; int /*<<< orphan*/  WorkerList; TYPE_5__* ListenSocketV6; TYPE_5__* ListenSocket; int /*<<< orphan*/  Print; int /*<<< orphan*/  Param; int /*<<< orphan*/ * IPv6AcceptThread; struct TYPE_13__* Tts; int /*<<< orphan*/  Port; int /*<<< orphan*/  ErrorCode; } ;
typedef  TYPE_1__ TTS_WORKER ;
typedef  TYPE_1__ TTS ;
typedef  int /*<<< orphan*/  THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  INFINITE ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int MAX_SIZE ; 
 void* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  TtsIPv6AcceptThread ; 
 int /*<<< orphan*/  TtsWorkerThread ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int) ; 
 int /*<<< orphan*/ * FUNC20 (char*) ; 

void FUNC21(THREAD *thread, void *param)
{
	TTS *tts;
	wchar_t tmp[MAX_SIZE];
	// Validate arguments
	if (thread == NULL || param == NULL)
	{
		return;
	}

	tts = (TTS *)param;

	tts->ListenSocket = NULL;
	tts->ListenSocket = FUNC6(tts->Port, false);
	tts->ListenSocketV6 = FUNC7(tts->Port, false);

	if (tts->ListenSocket == NULL && tts->ListenSocketV6 == NULL)
	{
		// Failed to Listen
		FUNC16(tmp, sizeof(tmp), FUNC20("TT_LISTEN_FAILED"), tts->Port);
		FUNC14(tts->Param, tts->Print, tmp);

		// Notify completion of preparation to parent thread
		FUNC9(thread);

		tts->ErrorCode = ERR_INTERNAL_ERROR;
	}
	else
	{
		UINT i, num_worker_threads;

		FUNC16(tmp, sizeof(tmp), FUNC20("TTS_LISTEN_STARTED"), tts->Port);
		FUNC14(tts->Param, tts->Print, tmp);

		if (tts->ListenSocketV6 != NULL)
		{
			FUNC16(tmp, sizeof(tmp), FUNC20("TTS_LISTEN_STARTED_V6"), tts->Port);
			FUNC14(tts->Param, tts->Print, tmp);
		}
		else
		{
			FUNC16(tmp, sizeof(tmp), FUNC20("TTS_LISTEN_FAILED_V6"), tts->Port);
			FUNC14(tts->Param, tts->Print, tmp);
		}

		if (tts->ListenSocket != NULL)
		{
			FUNC1(tts->ListenSocket->ref);
		}
		if (tts->ListenSocketV6 != NULL)
		{
			FUNC1(tts->ListenSocketV6->ref);
		}

		num_worker_threads = FUNC3();

		// Start the worker threads
		for (i = 0;i < num_worker_threads;i++)
		{
			TTS_WORKER *w = FUNC19(sizeof(TTS_WORKER));

			w->Tts = tts;
			w->WorkThread = FUNC8(TtsWorkerThread, w);
			FUNC18(w->WorkThread);

			FUNC0(tts->WorkerList, w);
		}

		// Notify completion of preparation to parent thread
		FUNC9(thread);

		// Prepare for IPv6 Accept thread
		tts->IPv6AcceptThread = NULL;
		if (tts->ListenSocketV6 != NULL)
		{
			tts->IPv6AcceptThread = FUNC8(TtsIPv6AcceptThread, tts);
		}

		FUNC15(tts, tts->ListenSocket);

		if (tts->IPv6AcceptThread != NULL)
		{
			FUNC17(tts->IPv6AcceptThread, INFINITE);
			FUNC12(tts->IPv6AcceptThread);
		}

		FUNC14(tts->Param, tts->Print, FUNC20("TTS_LISTEN_STOP"));

		FUNC10(tts->ListenSocket);
		FUNC10(tts->ListenSocketV6);

		for (i = 0;i < FUNC5(tts->WorkerList);i++)
		{
			TTS_WORKER *w = FUNC4(tts->WorkerList, i);

			FUNC13(w->SockEvent);

			// Wait for stopping the worker thread
			FUNC17(w->WorkThread, INFINITE);
			FUNC12(w->WorkThread);
			FUNC11(w->SockEvent);

			FUNC2(w);
		}
	}
}