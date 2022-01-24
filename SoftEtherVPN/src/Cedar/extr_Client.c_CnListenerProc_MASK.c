#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  function ;
struct TYPE_17__ {int* addr; } ;
struct TYPE_19__ {TYPE_1__ LocalIP; int /*<<< orphan*/  ref; } ;
struct TYPE_18__ {TYPE_3__* s; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_2__ TCP_ACCEPTED_PARAM ;
typedef  TYPE_3__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  APPID_CM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

void FUNC24(THREAD *thread, void *param)
{
	TCP_ACCEPTED_PARAM *data = (TCP_ACCEPTED_PARAM *)param;
	SOCK *s;
	PACK *p;
	// Validate arguments
	if (data == NULL || thread == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	//Set Application ID
	JL_SetCurrentProcessExplicitAppUserModelID(APPID_CM);
#endif	// OS_WIN32

	s = data->s;
	FUNC0(s->ref);
	FUNC16(thread);

	if (s->LocalIP.addr[0] == 127)
	{
		p = FUNC19(s);

		if (p != NULL)
		{
			char function[MAX_SIZE];

			if (FUNC18(p, "function", function, sizeof(function)))
			{
				if (FUNC22(function, "status_printer") == 0)
				{
					FUNC9(s, p);
				}
				else if (FUNC22(function, "connecterror_dialog") == 0)
				{
					FUNC2(s, p);
				}
				else if (FUNC22(function, "msg_dialog") == 0)
				{
					FUNC4(s, p);
				}
				else if (FUNC22(function, "nicinfo") == 0)
				{
					FUNC5(s, p);
				}
				else if (FUNC22(function, "password_dialog") == 0)
				{
					FUNC6(s, p);
				}
				else if (FUNC22(function, "secure_sign") == 0)
				{
					FUNC8(s, p);
				}
				else if (FUNC22(function, "check_cert") == 0)
				{
					FUNC1(s, p);
				}
				else if (FUNC22(function, "exit") == 0)
				{
#ifdef	OS_WIN32
					MsTerminateProcess();
#else	// OS_WIN32
					FUNC23(0);
#endif	// OS_WIN32
				}
				else if (FUNC22(function, "get_session_id") == 0)
				{
					PACK *p = FUNC15();
#ifdef	OS_WIN32
					PackAddInt(p, "session_id", MsGetCurrentTerminalSessionId());
#endif	// OS_WIN32
					FUNC21(s, p);
					FUNC11(p);
				}
				else if (FUNC22(function, "exec_driver_installer") == 0)
				{
					FUNC3(s, p);
				}
				else if (FUNC22(function, "release_socket") == 0)
				{
					// Stop the listener
					FUNC7(s, p);
				}
			}

			FUNC11(p);
		}
	}

	FUNC10(s);
	FUNC20(s);
}