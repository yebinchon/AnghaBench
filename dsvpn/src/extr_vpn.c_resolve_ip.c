
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; int ai_addrlen; int * ai_addr; int ai_socktype; scalar_t__ ai_flags; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int SOCK_STREAM ;
 int fprintf (int ,char*,char const*,char*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int *,int ,char*,int ,int *,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int stderr ;

__attribute__((used)) static int resolve_ip(char *ip, size_t sizeof_ip, const char *ip_or_name)
{
    struct addrinfo hints, *res;
    int eai;

    memset(&hints, 0, sizeof hints);
    hints.ai_flags = 0;
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_addr = ((void*)0);
    if ((eai = getaddrinfo(ip_or_name, ((void*)0), &hints, &res)) != 0 ||
        (res->ai_family != AF_INET && res->ai_family != AF_INET6) ||
        (eai = getnameinfo(res->ai_addr, res->ai_addrlen, ip, (socklen_t) sizeof_ip, ((void*)0), 0,
                           NI_NUMERICHOST | NI_NUMERICSERV)) != 0) {
        fprintf(stderr, "Unable to resolve [%s]: [%s]\n", ip_or_name, gai_strerror(eai));
        return -1;
    }
    return 0;
}
