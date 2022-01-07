
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; int sin_family; } ;
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addr_list; } ;


 int AF_INET ;
 int ESP_FAIL ;
 int ESP_OK ;
 struct hostent* gethostbyname (char const*) ;
 int memcpy (int *,struct in_addr*,int) ;

__attribute__((used)) static int resolve_dns(const char *host, struct sockaddr_in *ip) {

    struct hostent *he;
    struct in_addr **addr_list;
    he = gethostbyname(host);
    if (he == ((void*)0)) {
        return ESP_FAIL;
    }
    addr_list = (struct in_addr **)he->h_addr_list;
    if (addr_list[0] == ((void*)0)) {
        return ESP_FAIL;
    }
    ip->sin_family = AF_INET;
    memcpy(&ip->sin_addr, addr_list[0], sizeof(ip->sin_addr));
    return ESP_OK;
}
