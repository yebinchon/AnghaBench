
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CtStartClient () ;
 int CtStopClient () ;
 int GetLine (int *,int ) ;
 int Print (char*) ;

void client_test(UINT num, char **arg)
{
 Print("VPN Client Test. Press Enter key to stop the VPN Client .\n");
 CtStartClient();
 GetLine(((void*)0), 0);
 CtStopClient();
}
