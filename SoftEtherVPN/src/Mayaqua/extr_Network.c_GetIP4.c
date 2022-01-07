
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int GetIP4Ex (int *,char*,int ,int *) ;

bool GetIP4(IP *ip, char *hostname)
{
 return GetIP4Ex(ip, hostname, 0, ((void*)0));
}
