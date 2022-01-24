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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  target_port ;
typedef  int /*<<< orphan*/  recv_buf ;
typedef  int USHORT ;
typedef  int UINT ;
typedef  int UCHAR ;
struct TYPE_16__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
struct TYPE_15__ {int* addr; } ;
struct TYPE_14__ {scalar_t__ Port; scalar_t__ TargetPort; scalar_t__ Timeout; int* Username; int /*<<< orphan*/  TargetHostname; int /*<<< orphan*/  Hostname; } ;
struct TYPE_13__ {int /*<<< orphan*/ * Sock; int /*<<< orphan*/  ResolvedIp; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_1__ PROXY_PARAM_OUT ;
typedef  TYPE_2__ PROXY_PARAM_IN ;
typedef  TYPE_3__ IP ;
typedef  TYPE_4__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int volatile*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_4__* FUNC7 () ; 
 int /*<<< orphan*/  PROXY_CONNECTION_TIMEOUT ; 
 int PROXY_ERROR_AUTHENTICATION ; 
 int PROXY_ERROR_CANCELED ; 
 int PROXY_ERROR_CONNECTION ; 
 int PROXY_ERROR_DISCONNECTED ; 
 int PROXY_ERROR_GENERIC ; 
 int PROXY_ERROR_PARAMETER ; 
 int PROXY_ERROR_SUCCESS ; 
 int PROXY_ERROR_TARGET ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 

UINT FUNC15(PROXY_PARAM_OUT *out, PROXY_PARAM_IN *in, volatile bool *cancel_flag)
{
	bool dummy_cancel_flag = false;
	UCHAR tmp, recv_buf[8];
	USHORT target_port;
	IP target_ip;
	UINT ret;
	SOCK *s;
	BUF *b;
	// Validate arguments
	if (out == NULL || in == NULL || in->Port == 0 || in->TargetPort == 0 || FUNC5(in->Hostname) || FUNC5(in->TargetHostname))
	{
		return PROXY_ERROR_PARAMETER;
	}

	if (cancel_flag == NULL)
	{
		cancel_flag = &dummy_cancel_flag;
	}
	else if (*cancel_flag)
	{
		return PROXY_ERROR_CANCELED;
	}

	FUNC14(out, sizeof(PROXY_PARAM_OUT));

	// Get the IP address of the destination server
	if (FUNC3(&target_ip, in->TargetHostname) == false)
	{
		return PROXY_ERROR_CONNECTION;
	}

	// Open TCP connection to the proxy server
	s = FUNC4(in, cancel_flag, &out->ResolvedIp);
	if (s == NULL)
	{
		return PROXY_ERROR_CONNECTION;
	}

	FUNC11(s, FUNC6(PROXY_CONNECTION_TIMEOUT, (in->Timeout == 0 ? INFINITE : in->Timeout)));

	// Send request packet
	b = FUNC7();
	tmp = 4;
	FUNC13(b, &tmp, sizeof(tmp));
	tmp = 1;
	FUNC13(b, &tmp, sizeof(tmp));
	target_port = FUNC1(in->TargetPort);
	FUNC13(b, &target_port, sizeof(target_port));
	FUNC13(b, target_ip.addr, sizeof(target_ip.addr));
	FUNC13(b, in->Username, FUNC12(in->Username) + 1);

	ret = FUNC10(s, b->Buf, b->Size, false);

	FUNC2(b);

	if (ret == false)
	{
		ret = PROXY_ERROR_DISCONNECTED;
		goto FAILURE;
	}

	// Receive response packet
	if (FUNC8(s, recv_buf, sizeof(recv_buf), false) == false)
	{
		ret = PROXY_ERROR_DISCONNECTED;
		goto FAILURE;
	}

	if (recv_buf[0] != 0)
	{
		ret = PROXY_ERROR_GENERIC;
		goto FAILURE;
	}

	switch (recv_buf[1])
	{
	case 90:
		// Success
		FUNC11(s, INFINITE);
		out->Sock = s;
		return PROXY_ERROR_SUCCESS;
	case 93:
		// Authentication failure
		ret = PROXY_ERROR_AUTHENTICATION;
		goto FAILURE;
	default:
		// Failed to connect to the target server
		ret = PROXY_ERROR_TARGET;
	}

FAILURE:
	FUNC0(s);
	FUNC9(s);
	return ret;
}