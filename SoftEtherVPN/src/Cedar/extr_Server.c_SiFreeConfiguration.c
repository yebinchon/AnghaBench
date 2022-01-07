
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NoMoreSave; int Halt; int * CfgRw; int * AzureClient; int * DDnsClient; int * OpenVpnServerUdp; int * IPsecServer; int * SaveThread; int * SaveHaltEvent; } ;
typedef TYPE_1__ SERVER ;


 int FreeAzureClient (int *) ;
 int FreeCfgRw (int *) ;
 int FreeDDNSClient (int *) ;
 int FreeEth () ;
 int FreeIPsecServer (int *) ;
 int FreeOpenVpnServerUdp (int *) ;
 int INFINITE ;
 int ReleaseEvent (int *) ;
 int ReleaseThread (int *) ;
 int Set (int *) ;
 int SiWriteConfigurationFile (TYPE_1__*) ;
 int WaitThread (int *,int ) ;

void SiFreeConfiguration(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 SiWriteConfigurationFile(s);


 s->NoMoreSave = 1;
 s->Halt = 1;
 Set(s->SaveHaltEvent);
 WaitThread(s->SaveThread, INFINITE);

 ReleaseEvent(s->SaveHaltEvent);
 ReleaseThread(s->SaveThread);

 s->SaveHaltEvent = ((void*)0);
 s->SaveThread = ((void*)0);



 if (s->IPsecServer != ((void*)0))
 {
  FreeIPsecServer(s->IPsecServer);
  s->IPsecServer = ((void*)0);
 }


 if (s->OpenVpnServerUdp != ((void*)0))
 {
  FreeOpenVpnServerUdp(s->OpenVpnServerUdp);
  s->OpenVpnServerUdp = ((void*)0);
 }



 if (s->DDnsClient != ((void*)0))
 {
  FreeDDNSClient(s->DDnsClient);
  s->DDnsClient = ((void*)0);
 }


 if (s->AzureClient != ((void*)0))
 {
  FreeAzureClient(s->AzureClient);
  s->AzureClient = ((void*)0);
 }

 FreeCfgRw(s->CfgRw);
 s->CfgRw = ((void*)0);


 FreeEth();
}
