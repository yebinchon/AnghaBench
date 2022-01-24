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
struct eap_ssl_data {int /*<<< orphan*/  conn; int /*<<< orphan*/  ssl_ctx; } ;
struct eap_sm {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (char*,size_t,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(struct eap_sm *sm, struct eap_ssl_data *data,
			char *buf, size_t buflen, int verbose)
{
	char name[128];
	int len = 0, ret;

	if (FUNC1(data->ssl_ctx, data->conn, name, sizeof(name)) == 0)
	{
		ret = FUNC0(buf + len, buflen - len,
				  "EAP TLS cipher=%s\n", name);
		if (ret < 0 || (size_t) ret >= buflen - len)
			return len;
		len += ret;
	}

	return len;
}