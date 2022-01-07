
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; } ;
struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int sa_family_t ;
typedef int curl_socklen_t ;





 int Curl_inet_ntop (int,int *,char*,int ) ;
 int EAFNOSUPPORT ;
 int FALSE ;
 int MAX_IPADR_LEN ;
 int TRUE ;
 int errno ;
 int msnprintf (char*,int ,char*,int ) ;
 unsigned short ntohs (int ) ;

bool Curl_addr2string(struct sockaddr *sa, curl_socklen_t salen,
                      char *addr, long *port)
{
  struct sockaddr_in *si = ((void*)0);






  (void)salen;


  switch(sa->sa_family) {
    case 130:
      si = (struct sockaddr_in *)(void *) sa;
      if(Curl_inet_ntop(sa->sa_family, &si->sin_addr,
                        addr, MAX_IPADR_LEN)) {
        unsigned short us_port = ntohs(si->sin_port);
        *port = us_port;
        return TRUE;
      }
      break;
    default:
      break;
  }

  addr[0] = '\0';
  *port = 0;
  errno = EAFNOSUPPORT;
  return FALSE;
}
