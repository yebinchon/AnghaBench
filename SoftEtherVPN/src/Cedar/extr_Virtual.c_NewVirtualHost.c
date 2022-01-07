
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VH_OPTION ;
typedef int VH ;
typedef int CLIENT_OPTION ;
typedef int CLIENT_AUTH ;
typedef int CEDAR ;


 int * NewVirtualHostEx (int *,int *,int *,int *,int *) ;

VH *NewVirtualHost(CEDAR *cedar, CLIENT_OPTION *option, CLIENT_AUTH *auth, VH_OPTION *vh_option)
{
 return NewVirtualHostEx(cedar, option, auth, vh_option, ((void*)0));
}
