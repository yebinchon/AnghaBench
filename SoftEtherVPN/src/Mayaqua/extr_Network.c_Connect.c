
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ConnectEx (char*,int ,int ) ;

SOCK *Connect(char *hostname, UINT port)
{
 return ConnectEx(hostname, port, 0);
}
