
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_flags; int member_0; } ;
typedef int AVFormatContext ;


 int AI_NUMERICHOST ;
 int AV_LOG_ERROR ;
 int FFMIN (int,int ) ;
 int av_log (int *,int ,char*,char const*,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,int *,struct addrinfo*,struct addrinfo**) ;
 int memcpy (struct sockaddr_storage*,int ,int ) ;

__attribute__((used)) static int get_sockaddr(AVFormatContext *s,
                        const char *buf, struct sockaddr_storage *sock)
{
    struct addrinfo hints = { 0 }, *ai = ((void*)0);
    int ret;

    hints.ai_flags = AI_NUMERICHOST;
    if ((ret = getaddrinfo(buf, ((void*)0), &hints, &ai))) {
        av_log(s, AV_LOG_ERROR, "getaddrinfo(%s): %s\n",
               buf,
               gai_strerror(ret));
        return -1;
    }
    memcpy(sock, ai->ai_addr, FFMIN(sizeof(*sock), ai->ai_addrlen));
    freeaddrinfo(ai);
    return 0;
}
