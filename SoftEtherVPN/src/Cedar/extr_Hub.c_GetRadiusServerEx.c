
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HUB ;


 int GetRadiusServerEx2 (int *,char*,int ,int *,char*,int ,int *,int *,int ) ;

bool GetRadiusServerEx(HUB *hub, char *name, UINT size, UINT *port, char *secret, UINT secret_size, UINT *interval)
{
 return GetRadiusServerEx2(hub, name, size, port, secret, secret_size, interval, ((void*)0), 0);
}
