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
typedef  int /*<<< orphan*/  network_address ;
typedef  int guint ;
typedef  int gint ;
typedef  char gchar ;

/* Variables and functions */
 int /*<<< orphan*/  G_STRLOC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC6 (char const*,char) ; 
 int FUNC7 (char*,char**,int) ; 

gint FUNC8(network_address *addr, const gchar *address) {
	gchar *s;

	FUNC2(addr, -1);

	/* split the address:port */
	if (address[0] == '/')
		return FUNC5(addr, address);
	
	if (NULL != (s = FUNC6(address, ':'))) {
		gint ret;
		char *ip_address = FUNC3(address, s - address); /* may be NULL for strdup(..., 0) */
		char *port_err = NULL;

		guint port = FUNC7(s + 1, &port_err, 10);

		if (*(s + 1) == '\0') {
			FUNC0("%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. No port number",
					G_STRLOC, address);
			ret = -1;
		} else if (*port_err != '\0') {
			FUNC0("%s: IP-address has to be in the form [<ip>][:<port>], is '%s'. Failed to parse the port at '%s'",
					G_STRLOC, address, port_err);
			ret = -1;
		} else {
			ret = FUNC4(addr, ip_address, port);
		}

		if (ip_address) FUNC1(ip_address);

		return ret;
	}
	/* perhaps it is a plain IP address, lets add the default-port */
	return FUNC4(addr, address, 3306);
}