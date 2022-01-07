
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const timeval ;
struct sockaddr_in6 {unsigned int sin6_scope_id; } ;
struct sockaddr_in {int sin_port; int sin_family; struct addrinfo* sin_zero; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct hostent {int h_addr; } ;
struct addrinfo {int ai_addrlen; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int socklen_t ;
typedef int port_str ;
typedef int hints ;
typedef int fd_set ;
typedef int err ;


 int AF_INET ;
 scalar_t__ AF_INET6 ;
 int AF_UNSPEC ;
 int AI_NUMERICSERV ;
 int EINPROGRESS ;
 int EINTR ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int MAXHOSTNAMELEN ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int closesocket (int) ;
 int connect (int,struct sockaddr*,int) ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo_retro (char*,char*,struct addrinfo*,struct addrinfo**) ;
 struct hostent* gethostbyname (char const*) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int herror (char const*) ;
 int htons (unsigned short) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (int *,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int select (int,int *,int *,int *,int *) ;
 scalar_t__ setsockopt (int,int ,int ,char const*,int) ;
 int snprintf (char*,int,char*,unsigned short) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int strncpy (char*,char const*,int) ;

int connecthostport(const char * host, unsigned short port,
                    unsigned int scope_id)
{
 int s, n;




 char tmp_host[MAXHOSTNAMELEN+1];
 char port_str[8];
 struct addrinfo *ai, *p;
 struct addrinfo hints;
 memset(&hints, 0, sizeof(hints));




 hints.ai_socktype = SOCK_STREAM;
 hints.ai_family = AF_UNSPEC;

 snprintf(port_str, sizeof(port_str), "%hu", port);
 if(host[0] == '[')
 {

  int i, j;
  for(i = 0, j = 1; host[j] && (host[j] != ']') && i < MAXHOSTNAMELEN; i++, j++)
  {
   tmp_host[i] = host[j];
   if(0 == memcmp(host+j, "%25", 3))
    j+=2;
  }
  tmp_host[i] = '\0';
 }
 else
 {
  strncpy(tmp_host, host, MAXHOSTNAMELEN);
 }
 tmp_host[MAXHOSTNAMELEN] = '\0';
 n = getaddrinfo_retro(tmp_host, port_str, &hints, &ai);
 if(n != 0)
 {



  fprintf(stderr, "getaddrinfo() error : %s\n", gai_strerror(n));

  return -1;
 }
 s = -1;
 for(p = ai; p; p = p->ai_next)
 {
  s = socket(p->ai_family, p->ai_socktype, p->ai_protocol);
  if(s < 0)
   continue;
  if(p->ai_addr->sa_family == AF_INET6 && scope_id > 0) {
   struct sockaddr_in6 * addr6 = (struct sockaddr_in6 *)p->ai_addr;
   addr6->sin6_scope_id = scope_id;
  }
  n = connect(s, p->ai_addr, p->ai_addrlen);
  if(n < 0)
  {
   closesocket(s);
   continue;
  }
  else
  {
   break;
  }
 }
 freeaddrinfo(ai);
 if(s < 0)
  return -1;
 if(n < 0)
  return -1;

 return s;
}
