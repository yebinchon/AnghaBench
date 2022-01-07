
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct TYPE_5__ {int ai_addrlen; int ai_family; struct TYPE_5__* ai_canonname; void* ai_addr; } ;
typedef TYPE_1__ Curl_addrinfo ;


 int AF_INET ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* strdup (char*) ;

__attribute__((used)) static Curl_addrinfo *fake_ai(void)
{
  static Curl_addrinfo *ai;

  ai = calloc(1, sizeof(Curl_addrinfo));
  if(!ai)
    return ((void*)0);

  ai->ai_canonname = strdup("dummy");
  if(!ai->ai_canonname) {
    free(ai);
    return ((void*)0);
  }

  ai->ai_addr = calloc(1, sizeof(struct sockaddr_in));
  if(!ai->ai_addr) {
    free(ai->ai_canonname);
    free(ai);
    return ((void*)0);
  }

  ai->ai_family = AF_INET;
  ai->ai_addrlen = sizeof(struct sockaddr_in);

  return ai;
}
