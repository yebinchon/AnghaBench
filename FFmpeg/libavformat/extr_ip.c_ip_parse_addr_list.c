
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_storage {int member_0; } ;
struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int source_addr ;


 int AF_UNSPEC ;
 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int SOCK_DGRAM ;
 int av_dynarray2_add (void**,int*,int,int *) ;
 int av_freep (char**) ;
 char* av_get_token (char const**,char*) ;
 struct addrinfo* ff_ip_resolve_host (void*,char*,int ,int ,int ,int ) ;
 int freeaddrinfo (struct addrinfo*) ;
 int memcpy (struct sockaddr_storage*,int ,int ) ;

__attribute__((used)) static int ip_parse_addr_list(void *log_ctx, const char *buf,
                              struct sockaddr_storage **address_list_ptr,
                              int *address_list_size_ptr)
{
    struct addrinfo *ai = ((void*)0);



    while (buf && buf[0]) {
        char* host = av_get_token(&buf, ",");
        if (!host)
            return AVERROR(ENOMEM);

        ai = ff_ip_resolve_host(log_ctx, host, 0, SOCK_DGRAM, AF_UNSPEC, 0);
        av_freep(&host);

        if (ai) {
            struct sockaddr_storage source_addr = {0};
            memcpy(&source_addr, ai->ai_addr, ai->ai_addrlen);
            freeaddrinfo(ai);
            av_dynarray2_add((void **)address_list_ptr, address_list_size_ptr, sizeof(source_addr), (uint8_t *)&source_addr);
            if (!*address_list_ptr)
                return AVERROR(ENOMEM);
        } else {
            return AVERROR(EINVAL);
        }

        if (*buf)
            buf++;
    }

    return 0;
}
