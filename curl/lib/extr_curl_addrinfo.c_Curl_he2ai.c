
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {void* sin6_port; void* sin6_family; int sin6_addr; } ;
struct sockaddr_in {void* sin_port; void* sin_family; int sin_addr; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct hostent {char** h_addr_list; scalar_t__ h_addrtype; int * h_name; } ;
typedef scalar_t__ curl_socklen_t ;
struct TYPE_6__ {scalar_t__ ai_family; void* ai_addr; scalar_t__ ai_addrlen; int ai_socktype; struct TYPE_6__* ai_next; struct TYPE_6__* ai_canonname; } ;
typedef TYPE_1__ Curl_addrinfo ;
typedef scalar_t__ CURLcode ;
typedef void* CURL_SA_FAMILY_T ;




 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int Curl_freeaddrinfo (TYPE_1__*) ;
 int DEBUGASSERT (int) ;
 int SOCK_STREAM ;
 void* calloc (int,size_t) ;
 int free (TYPE_1__*) ;
 void* htons (unsigned short) ;
 int memcpy (int *,char*,int) ;
 TYPE_1__* strdup (int *) ;

Curl_addrinfo *
Curl_he2ai(const struct hostent *he, int port)
{
  Curl_addrinfo *ai;
  Curl_addrinfo *prevai = ((void*)0);
  Curl_addrinfo *firstai = ((void*)0);
  struct sockaddr_in *addr;



  CURLcode result = CURLE_OK;
  int i;
  char *curr;

  if(!he)

    return ((void*)0);

  DEBUGASSERT((he->h_name != ((void*)0)) && (he->h_addr_list != ((void*)0)));

  for(i = 0; (curr = he->h_addr_list[i]) != ((void*)0); i++) {

    size_t ss_size;





      ss_size = sizeof(struct sockaddr_in);

    ai = calloc(1, sizeof(Curl_addrinfo));
    if(!ai) {
      result = CURLE_OUT_OF_MEMORY;
      break;
    }
    ai->ai_canonname = strdup(he->h_name);
    if(!ai->ai_canonname) {
      result = CURLE_OUT_OF_MEMORY;
      free(ai);
      break;
    }
    ai->ai_addr = calloc(1, ss_size);
    if(!ai->ai_addr) {
      result = CURLE_OUT_OF_MEMORY;
      free(ai->ai_canonname);
      free(ai);
      break;
    }

    if(!firstai)

      firstai = ai;

    if(prevai)

      prevai->ai_next = ai;

    ai->ai_family = he->h_addrtype;



    ai->ai_socktype = SOCK_STREAM;

    ai->ai_addrlen = (curl_socklen_t)ss_size;



    switch(ai->ai_family) {
    case 129:
      addr = (void *)ai->ai_addr;

      memcpy(&addr->sin_addr, curr, sizeof(struct in_addr));
      addr->sin_family = (CURL_SA_FAMILY_T)(he->h_addrtype);
      addr->sin_port = htons((unsigned short)port);
      break;
    }

    prevai = ai;
  }

  if(result) {
    Curl_freeaddrinfo(firstai);
    firstai = ((void*)0);
  }

  return firstai;
}
