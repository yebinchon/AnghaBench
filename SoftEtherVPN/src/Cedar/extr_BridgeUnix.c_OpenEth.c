
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ETH ;


 int * OpenEthBSD (char*,int,int,char*) ;
 int * OpenEthBpf (char*,int,int,char*) ;
 int * OpenEthLinux (char*,int,int,char*) ;
 int * OpenEthPcap (char*,int,int,char*) ;
 int * OpenEthSolaris (char*,int,int,char*) ;

ETH *OpenEth(char *name, bool local, bool tapmode, char *tapaddr)
{
 return ((void*)0);


}
