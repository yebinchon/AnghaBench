
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telnet_info {int dummy; } ;
typedef int port_t ;
typedef int ipv4_t ;


 int atoi (char*) ;
 int htons (int ) ;
 int inet_addr (char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;
 struct telnet_info* telnet_info_new (char*,char*,char*,int ,int ,struct telnet_info*) ;

struct telnet_info *telnet_info_parse(char *str, struct telnet_info *out)
{
    char *conn, *auth, *arch;
    char *addr_str, *port_str, *user = ((void*)0), *pass = ((void*)0);
    ipv4_t addr;
    port_t port;

    if ((conn = strtok(str, " ")) == ((void*)0))
        return ((void*)0);
    if ((auth = strtok(((void*)0), " ")) == ((void*)0))
        return ((void*)0);
    arch = strtok(((void*)0), " ");

    if ((addr_str = strtok(conn, ":")) == ((void*)0))
        return ((void*)0);
    if ((port_str = strtok(((void*)0), ":")) == ((void*)0))
        return ((void*)0);

    if (strlen(auth) == 1)
    {
        if (auth[0] == ':')
        {
            user = "";
            pass = "";
        }
        else if (auth[0] != '?')
            return ((void*)0);
    }
    else
    {
        user = strtok(auth, ":");
        pass = strtok(((void*)0), ":");
    }

    addr = inet_addr(addr_str);
    port = htons(atoi(port_str));

    return telnet_info_new(user, pass, arch, addr, port, out);
}
