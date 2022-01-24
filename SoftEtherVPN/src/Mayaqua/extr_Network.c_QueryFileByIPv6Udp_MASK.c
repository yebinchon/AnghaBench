#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  scalar_t__ UINT ;
typedef  float UCHAR ;
typedef  int /*<<< orphan*/  SOCK_EVENT ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IP ;
typedef  int /*<<< orphan*/  INTERRUPT_MANAGER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 float* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,float*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ SOCK_LATER ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,float*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ UDP_FILE_QUERY_DST_PORT ; 
 int /*<<< orphan*/  UDP_FILE_QUERY_MAGIC_NUMBER ; 
 scalar_t__ UDP_FILE_QUERY_RETRY_INTERVAL ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,float*,scalar_t__) ; 

BUF *FUNC23(LIST *ip_list, UINT timeout, bool *cancel)
{
	bool dummy_flag = false;
	UINT64 start_tick, giveup_tick;
	UINT64 next_send_tick;
	SOCK *s;
	INTERRUPT_MANAGER *interrupt;
	BUF *buf = NULL;
	SOCK_EVENT *se;
	UCHAR *tmp_buf;
	UINT tmp_buf_size = 65535;
	// Validate arguments
	if (cancel == NULL)
	{
		cancel = &dummy_flag;
	}
	if (ip_list == NULL)
	{
		return NULL;
	}

	s = FUNC13(0, NULL);
	if (s == NULL)
	{
		return NULL;
	}

	tmp_buf = FUNC9(tmp_buf_size);

	start_tick = FUNC20();
	giveup_tick = start_tick + (UINT64)timeout;
	next_send_tick = 0;

	interrupt = FUNC11();

	FUNC0(interrupt, giveup_tick);

	se = FUNC12();
	FUNC6(s, se);

	while (true)
	{
		UINT64 now = FUNC20();

		if (now >= giveup_tick)
		{
			// Time-out
			break;
		}

		if (*cancel)
		{
			// User canceled
			break;
		}

		// Receive
		while (true)
		{
			IP src_ip;
			UINT src_port;
			UINT r;

			r = FUNC14(s, &src_ip, &src_port, tmp_buf, tmp_buf_size);

			if (r == SOCK_LATER || r == 0)
			{
				break;
			}

			if (src_port == UDP_FILE_QUERY_DST_PORT)
			{
				if (r >= 40)
				{
					if (FUNC1(tmp_buf, UDP_FILE_QUERY_MAGIC_NUMBER, FUNC19(UDP_FILE_QUERY_MAGIC_NUMBER)) == 0)
					{
						// Successful reception
						buf = FUNC10();
						FUNC22(buf, tmp_buf, r);
						FUNC17(buf, 0, 0);
						break;
					}
				}
			}
		}

		if (buf != NULL)
		{
			// Successful reception
			break;
		}

		if (next_send_tick == 0 || (now >= next_send_tick))
		{
			// Transmission
			UINT i;
			for (i = 0;i < FUNC8(ip_list);i++)
			{
				IP *ip = FUNC7(ip_list, i);
				UCHAR c = 'F';

				FUNC18(s, ip, UDP_FILE_QUERY_DST_PORT, &c, 1);
			}

			next_send_tick = now + (UINT64)UDP_FILE_QUERY_RETRY_INTERVAL;
			FUNC0(interrupt, next_send_tick);
		}

		FUNC21(se, FUNC5(interrupt));
	}

	FUNC4(interrupt);

	FUNC2(s);
	FUNC15(s);

	FUNC16(se);

	FUNC3(tmp_buf);

	return buf;
}