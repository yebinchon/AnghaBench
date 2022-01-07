
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HUB ;


 int RADIUS_RETRY_INTERVAL ;
 int SetRadiusServerEx (int *,char*,int ,char*,int ) ;

void SetRadiusServer(HUB *hub, char *name, UINT port, char *secret)
{
 SetRadiusServerEx(hub, name, port, secret, RADIUS_RETRY_INTERVAL);
}
