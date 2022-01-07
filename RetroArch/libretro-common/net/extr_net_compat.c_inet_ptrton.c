
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int inet_aton (char const*,struct in_addr*) ;
 int inet_pton (int,char const*,void*) ;
 int sceNetInetPton (int,char const*,void*) ;

int inet_ptrton(int af, const char *src, void *dst)
{






   return inet_pton(af, src, dst);

}
