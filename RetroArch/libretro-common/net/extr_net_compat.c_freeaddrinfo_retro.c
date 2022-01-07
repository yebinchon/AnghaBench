
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; } ;


 int free (struct addrinfo*) ;
 int freeaddrinfo (struct addrinfo*) ;

void freeaddrinfo_retro(struct addrinfo *res)
{




   freeaddrinfo(res);

}
