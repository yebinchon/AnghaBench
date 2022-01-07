
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sbuf ;


 int AV_LOG_ERROR ;
 int NI_NUMERICSERV ;
 int av_log (int *,int ,char*,int ) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int,int *,int ,char*,int,int ) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int udp_port(struct sockaddr_storage *addr, int addr_len)
{
    char sbuf[sizeof(int)*3+1];
    int error;

    if ((error = getnameinfo((struct sockaddr *)addr, addr_len, ((void*)0), 0, sbuf, sizeof(sbuf), NI_NUMERICSERV)) != 0) {
        av_log(((void*)0), AV_LOG_ERROR, "getnameinfo: %s\n", gai_strerror(error));
        return -1;
    }

    return strtol(sbuf, ((void*)0), 10);
}
