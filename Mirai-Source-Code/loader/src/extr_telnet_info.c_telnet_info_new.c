
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct telnet_info {int has_auth; int has_arch; int port; int addr; int arch; int pass; int user; } ;
typedef int port_t ;
typedef int ipv4_t ;


 int strcpy (int ,char*) ;

struct telnet_info *telnet_info_new(char *user, char *pass, char *arch, ipv4_t addr, port_t port, struct telnet_info *info)
{
    if (user != ((void*)0))
        strcpy(info->user, user);
    if (pass != ((void*)0))
        strcpy(info->pass, pass);
    if (arch != ((void*)0))
        strcpy(info->arch, arch);
    info->addr = addr;
    info->port = port;

    info->has_auth = user != ((void*)0) || pass != ((void*)0);
    info->has_arch = arch != ((void*)0);

    return info;
}
