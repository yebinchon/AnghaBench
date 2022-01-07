
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_11__ {int ref; } ;
struct TYPE_10__ {int EnableMSCHAPv2; int MsChapV2_ErrorCode; int FlushList; int ClientHostname; int ClientSoftwareName; int Postfix; TYPE_1__* TubeSend; TYPE_1__* TubeRecv; void* ServerPort; int ServerIP; void* ClientPort; int ClientIP; int CryptName; void* AdjustMss; TYPE_3__* Cedar; int AuthProtocol; } ;
struct TYPE_9__ {int Ref; } ;
typedef TYPE_1__ TUBE ;
typedef int THREAD ;
typedef TYPE_2__ PPP_SESSION ;
typedef int IP ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int IPToStr (int ,int,int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int * NewThread (int ,TYPE_2__*) ;
 int NewTubeFlushList () ;
 int PPPThread ;
 int PPP_PROTOCOL_PAP ;
 int StrCpy (int ,int,char*) ;
 TYPE_2__* ZeroMalloc (int) ;

THREAD *NewPPPSession(CEDAR *cedar, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, TUBE *send_tube, TUBE *recv_tube, char *postfix, char *client_software_name, char *client_hostname, char *crypt_name, UINT adjust_mss)
{
 PPP_SESSION *p;
 THREAD *t;

 if (cedar == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || send_tube == ((void*)0) || recv_tube == ((void*)0))
 {
  return ((void*)0);
 }
 if (IsEmptyStr(postfix))
 {
  postfix = "PPP";
 }
 if (IsEmptyStr(crypt_name))
 {
  crypt_name = "";
 }
 if (IsEmptyStr(client_software_name))
 {
  client_software_name = "PPP VPN Client";
 }


 p = ZeroMalloc(sizeof(PPP_SESSION));

 p->EnableMSCHAPv2 = 1;
 p->AuthProtocol = PPP_PROTOCOL_PAP;
 p->MsChapV2_ErrorCode = 691;

 p->Cedar = cedar;
 AddRef(cedar->ref);

 p->AdjustMss = adjust_mss;

 StrCpy(p->CryptName, sizeof(p->CryptName), crypt_name);

 Copy(&p->ClientIP, client_ip, sizeof(IP));
 p->ClientPort = client_port;

 Copy(&p->ServerIP, server_ip, sizeof(IP));
 p->ServerPort = server_port;

 p->TubeRecv = recv_tube;
 p->TubeSend = send_tube;

 AddRef(p->TubeRecv->Ref);
 AddRef(p->TubeSend->Ref);

 StrCpy(p->Postfix, sizeof(p->Postfix), postfix);
 StrCpy(p->ClientSoftwareName, sizeof(p->ClientSoftwareName), client_software_name);

 if (IsEmptyStr(client_hostname))
 {
  IPToStr(p->ClientHostname, sizeof(p->ClientHostname), client_ip);
 }
 else
 {
  StrCpy(p->ClientHostname, sizeof(p->ClientHostname), client_hostname);
 }

 p->FlushList = NewTubeFlushList();


 t = NewThread(PPPThread, p);

 return t;
}
