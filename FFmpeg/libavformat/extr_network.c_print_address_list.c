
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; int ai_addrlen; int ai_addr; } ;
typedef int portbuf ;
typedef int hostbuf ;


 int AV_LOG_DEBUG ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int av_log (void*,int ,char*,char const*,...) ;
 int getnameinfo (int ,int ,char*,int,char*,int,int) ;

__attribute__((used)) static void print_address_list(void *ctx, const struct addrinfo *addr,
                               const char *title)
{
    char hostbuf[100], portbuf[20];
    av_log(ctx, AV_LOG_DEBUG, "%s:\n", title);
    while (addr) {
        getnameinfo(addr->ai_addr, addr->ai_addrlen,
                    hostbuf, sizeof(hostbuf), portbuf, sizeof(portbuf),
                    NI_NUMERICHOST | NI_NUMERICSERV);
        av_log(ctx, AV_LOG_DEBUG, "Address %s port %s\n", hostbuf, portbuf);
        addr = addr->ai_next;
    }
}
