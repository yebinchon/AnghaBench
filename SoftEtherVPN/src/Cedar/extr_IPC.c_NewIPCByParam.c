
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Layer; int ClientCertificate; int Mss; int BridgeMode; int CryptName; int ClientHostname; int ServerPort; int ServerIp; int ClientPort; int ClientIp; int Password; int UserName; int HubName; int Postfix; int ClientName; } ;
typedef TYPE_1__ IPC_PARAM ;
typedef int IPC ;
typedef int CEDAR ;


 int * NewIPC (int *,int ,int ,int ,int ,int ,int *,int *,int ,int *,int ,int ,int ,int ,int ,int *,int ,int ) ;

IPC *NewIPCByParam(CEDAR *cedar, IPC_PARAM *param, UINT *error_code)
{
 IPC *ipc;

 if (cedar == ((void*)0) || param == ((void*)0))
 {
  return ((void*)0);
 }

 ipc = NewIPC(cedar, param->ClientName, param->Postfix, param->HubName,
  param->UserName, param->Password, error_code, &param->ClientIp,
  param->ClientPort, &param->ServerIp, param->ServerPort,
  param->ClientHostname, param->CryptName,
  param->BridgeMode, param->Mss, ((void*)0), param->ClientCertificate, param->Layer);

 return ipc;
}
