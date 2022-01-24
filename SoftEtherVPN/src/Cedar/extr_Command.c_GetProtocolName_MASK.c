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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int UINT ;

/* Variables and functions */
#define  PROXY_DIRECT 131 
#define  PROXY_HTTP 130 
#define  PROXY_SOCKS 129 
#define  PROXY_SOCKS5 128 
 int /*<<< orphan*/ * FUNC0 (char*) ; 

wchar_t *FUNC1(UINT n)
{
	switch (n)
	{
	case PROXY_DIRECT:
		return FUNC0("PROTO_DIRECT_TCP");
	case PROXY_HTTP:
		return FUNC0("PROTO_HTTP_PROXY");
	case PROXY_SOCKS:
		return FUNC0("PROTO_SOCKS_PROXY");
	case PROXY_SOCKS5:
		return FUNC0("PROTO_SOCKS5_PROXY");
	}

	return FUNC0("PROTO_UNKNOWN");
}