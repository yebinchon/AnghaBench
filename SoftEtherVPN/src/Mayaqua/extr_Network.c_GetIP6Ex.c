
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int GetIP4Ex6Ex (int *,char*,int ,int,int*) ;

bool GetIP6Ex(IP *ip, char *hostname, UINT timeout, bool *cancel)
{
 return GetIP4Ex6Ex(ip, hostname, timeout, 1, cancel);
}
