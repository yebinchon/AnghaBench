
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

void bridge_test(UINT num, char **arg)
{
 Print("VPN Bridge Test. Press Enter key to stop the VPN Bridge .\n");

 StInit();

 StStartServer(1);

 GetLine(((void*)0), 0);

 StStopServer();

 StFree();
}
