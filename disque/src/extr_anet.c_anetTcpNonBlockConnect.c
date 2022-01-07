
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANET_CONNECT_NONBLOCK ;
 int anetTcpGenericConnect (char*,char*,int,int *,int ) ;

int anetTcpNonBlockConnect(char *err, char *addr, int port)
{
    return anetTcpGenericConnect(err,addr,port,((void*)0),ANET_CONNECT_NONBLOCK);
}
