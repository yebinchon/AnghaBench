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
struct telnet_info {int dummy; } ;
typedef  int /*<<< orphan*/  port_t ;
typedef  int /*<<< orphan*/  ipv4_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 char* FUNC4 (char*,char*) ; 
 struct telnet_info* FUNC5 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct telnet_info*) ; 

struct telnet_info *FUNC6(char *str, struct telnet_info *out) // Format: ip:port user:pass arch
{
    char *conn, *auth, *arch;
    char *addr_str, *port_str, *user = NULL, *pass = NULL;
    ipv4_t addr;
    port_t port;

    if ((conn = FUNC4(str, " ")) == NULL)
        return NULL;
    if ((auth = FUNC4(NULL, " ")) == NULL)
        return NULL;
    arch = FUNC4(NULL, " "); // We don't care if we don't know the arch

    if ((addr_str = FUNC4(conn, ":")) == NULL)
        return NULL;
    if ((port_str = FUNC4(NULL, ":")) == NULL)
        return NULL;

    if (FUNC3(auth) == 1)
    {
        if (auth[0] == ':')
        {
            user = "";
            pass = "";
        }
        else if (auth[0] != '?')
            return NULL;
    }
    else
    {
        user = FUNC4(auth, ":");
        pass = FUNC4(NULL, ":");
    }

    addr = FUNC2(addr_str);
    port = FUNC1(FUNC0(port_str));

    return FUNC5(user, pass, arch, addr, port, out);
}