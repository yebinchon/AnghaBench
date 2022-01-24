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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  server_port ;
struct TYPE_4__ {char* Method; char* Referer; int Secure; char* Target; char* HostName; int Port; char* HeaderHostName; } ;
typedef  TYPE_1__ URL_DATA ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ INFINITE ; 
 int /*<<< orphan*/  MAX_HOST_NAME_LEN ; 
 int MAX_SIZE ; 
 int FUNC2 (char*,char**,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* WPC_HTTP_GET_NAME ; 
 char* WPC_HTTP_POST_NAME ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

bool FUNC9(URL_DATA *data, char *str, bool is_post, char *referrer)
{
	char tmp[MAX_SIZE * 3];
	char server_port[MAX_HOST_NAME_LEN + 16];
	char *s = NULL;
	char *host;
	UINT port;
	UINT i;
	// Validate arguments
	if (data == NULL || str == NULL)
	{
		return false;
	}

	FUNC8(data, sizeof(URL_DATA));

	if (is_post)
	{
		FUNC5(data->Method, sizeof(data->Method), WPC_HTTP_POST_NAME);
	}
	else
	{
		FUNC5(data->Method, sizeof(data->Method), WPC_HTTP_GET_NAME);
	}

	if (referrer != NULL)
	{
		FUNC5(data->Referer, sizeof(data->Referer), referrer);
	}

	FUNC5(tmp, sizeof(tmp), str);
	FUNC7(tmp);

	// Determine the protocol
	if (FUNC4(tmp, "http://"))
	{
		data->Secure = false;
		s = &tmp[7];
	}
	else if (FUNC4(tmp, "https://"))
	{
		data->Secure = true;
		s = &tmp[8];
	}
	else
	{
		if (FUNC3(tmp, "://", 0, false) != INFINITE)
		{
			return false;
		}
		data->Secure = false;
		s = &tmp[0];
	}

	// Get the "server name:port number"
	FUNC5(server_port, sizeof(server_port), s);
	i = FUNC3(server_port, "/", 0, false);
	if (i != INFINITE)
	{
		server_port[i] = 0;
		s += FUNC6(server_port);
		FUNC5(data->Target, sizeof(data->Target), s);
	}
	else
	{
		FUNC5(data->Target, sizeof(data->Target), "/");
	}

	if (FUNC2(server_port, &host, &port, data->Secure ? 443 : 80) == false)
	{
		return false;
	}

	FUNC5(data->HostName, sizeof(data->HostName), host);
	data->Port = port;

	FUNC1(host);

	if ((data->Secure && data->Port == 443) || (data->Secure == false && data->Port == 80))
	{
		FUNC5(data->HeaderHostName, sizeof(data->HeaderHostName), data->HostName);
	}
	else
	{
		FUNC0(data->HeaderHostName, sizeof(data->HeaderHostName),
			"%s:%u", data->HostName, data->Port);
	}

	return true;
}