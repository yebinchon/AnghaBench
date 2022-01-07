
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GetLine (int *,int ) ;
 int Print (char*) ;
 int StFree () ;
 int StInit () ;
 int StStartServer (int) ;
 int StStopServer () ;

void server_test(UINT num, char **arg)
{
 Print("VPN Server Test. Press Enter key to stop the VPN Server .\n");

 StInit();

 StStartServer(0);

 GetLine(((void*)0), 0);

 StStopServer();

 StFree();
}
