#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int Halt; int /*<<< orphan*/  WorkerList; int /*<<< orphan*/  ErrorCode; int /*<<< orphan*/  Print; int /*<<< orphan*/  Param; int /*<<< orphan*/  Thread; int /*<<< orphan*/  ListenSocketV6; int /*<<< orphan*/  ListenSocket; } ;
typedef  TYPE_1__ TTS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

UINT FUNC8(TTS *tts)
{
	UINT ret;
	// Validate arguments
	if (tts == NULL)
	{
		return ERR_INVALID_PARAMETER;
	}

	FUNC5(tts->Param, tts->Print, FUNC7("TTS_STOP_INIT"));

	tts->Halt = true;
	FUNC0(tts->ListenSocket);
	FUNC3(tts->ListenSocket);
	FUNC0(tts->ListenSocketV6);
	FUNC3(tts->ListenSocketV6);

	// Wait for the termination of the thread
	FUNC6(tts->Thread, INFINITE);

	FUNC4(tts->Thread);

	FUNC5(tts->Param, tts->Print, FUNC7("TTS_STOP_FINISHED"));

	ret = tts->ErrorCode;

	FUNC2(tts->WorkerList);

	FUNC1(tts);

	return ret;
}