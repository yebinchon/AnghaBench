
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXHOSTNAMELEN ;
 void* miniwget2 (char*,unsigned short,char*,int*,char*,int,unsigned int,int*) ;
 int parseURL (char const*,char*,unsigned short*,char**,unsigned int*) ;
 int printf (char*,char*,unsigned short,char*,unsigned int) ;

void *
miniwget_getaddr(const char * url, int * size,
                 char * addr, int addrlen, unsigned int scope_id,
                 int * status_code)
{
 unsigned short port;
 char * path;

 char hostname[MAXHOSTNAMELEN+1];
 *size = 0;
 if(addr)
  addr[0] = '\0';
 if(!parseURL(url, hostname, &port, &path, &scope_id))
  return ((void*)0);




 return miniwget2(hostname, port, path, size, addr, addrlen, scope_id, status_code);
}
