
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;
typedef int PACKET_ADAPTER ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int CEDAR ;


 int * NewClientSessionEx (int *,int *,int *,int *,int *,int*) ;

SESSION *NewClientSession(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, PACKET_ADAPTER *pa, bool *NicDownOnDisconnect)
{
 return NewClientSessionEx(cedar, option, auth, pa, ((void*)0), NicDownOnDisconnect);
}
