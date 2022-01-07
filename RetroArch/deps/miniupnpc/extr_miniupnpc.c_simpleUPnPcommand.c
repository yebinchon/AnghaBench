
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct UPNParg {int dummy; } ;


 int printf (char*) ;
 char* simpleUPnPcommand2 (int,char const*,char const*,char const*,struct UPNParg*,int*,char*) ;

char * simpleUPnPcommand(int s, const char * url, const char * service,
         const char * action, struct UPNParg * args,
         int * bufsize)
{
 char * buf;


 buf = simpleUPnPcommand2(s, url, service, action, args, bufsize, "1.1");
 return buf;
}
