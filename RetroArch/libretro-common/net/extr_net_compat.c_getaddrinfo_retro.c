
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {int ai_flags; int ai_addrlen; struct sockaddr* ai_addr; TYPE_1__ sin_addr; void* sin_family; int sin_port; int ai_socktype; void* ai_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {char const** h_addr_list; int h_length; int h_addr; void* h_addrtype; } ;
struct addrinfo {int ai_flags; int ai_addrlen; struct sockaddr* ai_addr; TYPE_1__ sin_addr; void* sin_family; int sin_port; int ai_socktype; void* ai_family; } ;


 void* AF_INET ;
 void* AF_UNSPEC ;
 int AI_PASSIVE ;
 void* INADDR_ANY ;
 scalar_t__ calloc (int,int) ;
 int free (struct sockaddr_in*) ;
 int getaddrinfo (char const*,char const*,struct sockaddr_in*,struct sockaddr_in**) ;
 scalar_t__ gethostbyname (char const*) ;
 void* inet_addr (char const*) ;
 int inet_htons (int ) ;
 scalar_t__ isdigit (char const) ;
 int memcpy (TYPE_1__*,int ,int ) ;
 int strtoul (char const*,int *,int ) ;

int getaddrinfo_retro(const char *node, const char *service,
      struct addrinfo *hints, struct addrinfo **res)
{
   struct sockaddr_in *in_addr = ((void*)0);
   struct addrinfo *info = ((void*)0);

   (void)in_addr;
   (void)info;

   if (!hints->ai_family)
   {



      hints->ai_family = AF_UNSPEC;

   }
   return getaddrinfo(node, service, hints, res);

}
