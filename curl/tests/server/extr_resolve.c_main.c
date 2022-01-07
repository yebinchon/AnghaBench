
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
struct addrinfo {int ai_flags; int ai_socktype; int ai_family; } ;
typedef int hints ;
typedef int getaddrinfo ;
typedef int freeaddrinfo ;
typedef scalar_t__ curl_socket_t ;


 int AI_CANONNAME ;
 scalar_t__ CURL_SOCKET_BAD ;
 scalar_t__ FALSE ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 scalar_t__ TRUE ;
 int atexit (int ) ;
 struct hostent* gethostbyname (char const*) ;
 char* ipv_inuse ;
 int memset (struct addrinfo*,int ,int) ;
 int printf (char*,char*,...) ;
 int puts (char*) ;
 int sclose (scalar_t__) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strcmp (char*,char*) ;
 scalar_t__ use_ipv6 ;
 int win32_cleanup ;
 int win32_init () ;

int main(int argc, char *argv[])
{
  int arg = 1;
  const char *host = ((void*)0);
  int rc = 0;

  while(argc>arg) {
    if(!strcmp("--version", argv[arg])) {
      printf("resolve IPv4%s\n",



             ""

             );
      return 0;
    }
    else if(!strcmp("--ipv6", argv[arg])) {
      ipv_inuse = "IPv6";
      use_ipv6 = TRUE;
      arg++;
    }
    else if(!strcmp("--ipv4", argv[arg])) {

      ipv_inuse = "IPv4";
      use_ipv6 = FALSE;
      arg++;
    }
    else {
      host = argv[arg++];
    }
  }
  if(!host) {
    puts("Usage: resolve [option] <host>\n"
         " --version\n"
         " --ipv4"



         );
    return 1;
  }
  if(use_ipv6) {
    puts("IPv6 support has been disabled in this program");
    return 1;
  }
  else {

    struct hostent *he;

    he = gethostbyname(host);

    rc = !he;
  }


  if(rc)
    printf("Resolving %s '%s' didn't work\n", ipv_inuse, host);

  return !!rc;
}
