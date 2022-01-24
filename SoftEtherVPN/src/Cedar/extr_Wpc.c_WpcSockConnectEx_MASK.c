#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  in ;
struct TYPE_12__ {int ProxyType; int /*<<< orphan*/  CustomHttpHeader; int /*<<< orphan*/  ProxyPassword; int /*<<< orphan*/  ProxyUsername; int /*<<< orphan*/  ProxyPort; int /*<<< orphan*/  ProxyHostName; int /*<<< orphan*/  Port; int /*<<< orphan*/  HostName; } ;
typedef  TYPE_1__ WPC_CONNECT ;
typedef  int UINT ;
struct TYPE_14__ {int Timeout; int /*<<< orphan*/  HttpCustomHeader; int /*<<< orphan*/  Password; int /*<<< orphan*/  Username; int /*<<< orphan*/  Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  TargetPort; int /*<<< orphan*/  TargetHostname; } ;
struct TYPE_13__ {int /*<<< orphan*/ * Sock; } ;
typedef  int /*<<< orphan*/  SOCK ;
typedef  TYPE_2__ PROXY_PARAM_OUT ;
typedef  TYPE_3__ PROXY_PARAM_IN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ERR_CONNECT_FAILED ; 
 int ERR_INTERNAL_ERROR ; 
 int ERR_NO_ERROR ; 
 int PROXY_DIRECT ; 
#define  PROXY_HTTP 130 
#define  PROXY_SOCKS 129 
#define  PROXY_SOCKS5 128 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*,int*) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*,int*) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 

SOCK *FUNC8(WPC_CONNECT *param, UINT *error_code, UINT timeout, bool *cancel)
{
	SOCK *sock;
	UINT ret;
	// Validate arguments
	if (param == NULL)
	{
		return NULL;
	}

	if (error_code == NULL)
	{
		error_code = &ret;
	}

	if (param->ProxyType == PROXY_DIRECT)
	{
		sock = FUNC6(param->HostName, param->Port, timeout, cancel, NULL, true, NULL, false, NULL);
		*error_code = (sock != NULL ? ERR_NO_ERROR : ERR_CONNECT_FAILED);
		return sock;
	}
	else
	{
		PROXY_PARAM_OUT out;
		PROXY_PARAM_IN in;
		UINT ret;

		FUNC7(&in, sizeof(in));

		in.Timeout = timeout;

		FUNC5(in.TargetHostname, sizeof(in.TargetHostname), param->HostName);
		in.TargetPort = param->Port;

		FUNC5(in.Hostname, sizeof(in.Hostname), param->ProxyHostName);
		in.Port = param->ProxyPort;

		FUNC5(in.Username, sizeof(in.Username), param->ProxyUsername);
		FUNC5(in.Password, sizeof(in.Password), param->ProxyPassword);

		FUNC5(in.HttpCustomHeader, sizeof(in.HttpCustomHeader), param->CustomHttpHeader);

		switch (param->ProxyType)
		{
		case PROXY_HTTP:
			ret = FUNC2(&out, &in, cancel);
			break;
		case PROXY_SOCKS:
			ret = FUNC3(&out, &in, cancel);
			break;
		case PROXY_SOCKS5:
			ret = FUNC4(&out, &in, cancel);
			break;
		default:
			*error_code = ERR_INTERNAL_ERROR;
			FUNC0("WpcSockConnect(): Unknown proxy type: %u!\n", param->ProxyType);
			return NULL;
		}

		*error_code = FUNC1(ret);

		if (*error_code != ERR_NO_ERROR)
		{
			FUNC0("ClientConnectGetSocket(): Connection via proxy server failed with error %u\n", ret);
			return NULL;
		}

		return out.Sock;
	}
}