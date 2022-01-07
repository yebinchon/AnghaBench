
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct ifaddrs {TYPE_1__* ifa_addr; int ifa_name; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {int sa_family; } ;


 int AF_INET ;
 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 int getnameinfo (TYPE_1__*,int,char*,int,int *,int ,int ) ;
 int pPrint (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (char* const,char*) ;

int taosGetPrivateIp(char *const ip) {
  bool hasLoCard = 0;

  struct ifaddrs *ifaddr, *ifa;
  int family, s;
  char host[NI_MAXHOST];

  if (getifaddrs(&ifaddr) == -1) {
    return -1;
  }


  int flag = 0;
  for (ifa = ifaddr; ifa != ((void*)0); ifa = ifa->ifa_next) {
    if (ifa->ifa_addr == ((void*)0)) continue;

    family = ifa->ifa_addr->sa_family;
    if (strcmp("lo", ifa->ifa_name) == 0) {
      hasLoCard = 1;
      continue;
    }

    if (family == AF_INET) {

      s = getnameinfo(ifa->ifa_addr, (family == AF_INET) ? sizeof(struct sockaddr_in) : sizeof(struct sockaddr_in6),
                      host, NI_MAXHOST, ((void*)0), 0, NI_NUMERICHOST);
      if (s != 0) {
        freeifaddrs(ifaddr);
        return -1;
      }

      strcpy(ip, host);
      flag = 1;
      break;
    }
  }

  freeifaddrs(ifaddr);
  if (flag) {
    return 0;
  } else {
    if (hasLoCard) {
      pPrint("no net card was found, use lo:127.0.0.1 as default");
      strcpy(ip, "127.0.0.1");
      return 0;
    }
    return -1;
  }
}
