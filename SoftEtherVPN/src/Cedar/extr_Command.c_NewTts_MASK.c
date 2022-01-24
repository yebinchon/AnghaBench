#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int /*<<< orphan*/ * Thread; int /*<<< orphan*/  WorkerList; int /*<<< orphan*/ * Print; void* Param; int /*<<< orphan*/  Port; } ;
typedef  int /*<<< orphan*/  TT_PRINT_PROC ;
typedef  TYPE_1__ TTS ;
typedef  int /*<<< orphan*/  THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TtsListenThread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

TTS *FUNC6(UINT port, void *param, TT_PRINT_PROC *print_proc)
{
	TTS *tts;
	THREAD *t;

	tts = FUNC4(sizeof(TTS));
	tts->Port = port;
	tts->Param = param;
	tts->Print = print_proc;

	FUNC2(param, print_proc, FUNC5("TTS_INIT"));

	tts->WorkerList = FUNC0(NULL);

	// Creating a thread
	t = FUNC1(TtsListenThread, tts);
	FUNC3(t);

	tts->Thread = t;

	return tts;
}