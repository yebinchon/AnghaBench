
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GC_SVC_NAME_VPNBRIDGE ;
 int ICO_BRIDGE ;
 int InitProcessCallOnce () ;
 int MsService (int ,int ,int ,int ,char*) ;
 int StartProcess ;
 int StopProcess ;
 int UnixService (int,char**,char*,int ,int ) ;
 int VgUseStaticLink () ;

int main(int argc, char *argv[])
{
 InitProcessCallOnce();

 VgUseStaticLink();




 return UnixService(argc, argv, "vpnbridge", StartProcess, StopProcess);

}
