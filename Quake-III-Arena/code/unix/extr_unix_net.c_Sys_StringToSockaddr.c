
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef int qboolean ;


 int AF_INET ;
 struct hostent* gethostbyname (char const*) ;
 int inet_addr (char const*) ;
 int memset (struct sockaddr*,int ,int) ;
 int qfalse ;
 int qtrue ;

qboolean Sys_StringToSockaddr (const char *s, struct sockaddr *sadr)
{
 struct hostent *h;


 memset (sadr, 0, sizeof(*sadr));
 ((struct sockaddr_in *)sadr)->sin_family = AF_INET;

 ((struct sockaddr_in *)sadr)->sin_port = 0;

 if ( s[0] >= '0' && s[0] <= '9')
 {
  *(int *)&((struct sockaddr_in *)sadr)->sin_addr = inet_addr(s);
 }
 else
 {
  if (! (h = gethostbyname(s)) )
   return qfalse;
  *(int *)&((struct sockaddr_in *)sadr)->sin_addr = *(int *)h->h_addr_list[0];
 }

 return qtrue;
}
