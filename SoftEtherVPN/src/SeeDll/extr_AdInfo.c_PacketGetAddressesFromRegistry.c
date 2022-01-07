
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int S_addr; } ;
struct TYPE_6__ {TYPE_1__ S_un; } ;
struct sockaddr_in {void* sin_family; TYPE_2__ sin_addr; } ;
struct TYPE_7__ {int SubnetMask; int Broadcast; int IPAddress; } ;
typedef TYPE_3__ npf_if_addr ;
typedef scalar_t__ WCHAR ;
typedef scalar_t__ ULONG ;
typedef scalar_t__* PLONG ;
typedef scalar_t__* LPTSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOLEAN ;


 void* AF_INET ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GlobalFreePtr (scalar_t__*) ;
 int HKEY_LOCAL_MACHINE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,scalar_t__*,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,scalar_t__*,int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__* SChar2WChar (char*) ;
 scalar_t__* TEXT (char*) ;
 int TRUE ;
 int inet_addrU (scalar_t__*) ;
 scalar_t__ wcsncmp (scalar_t__*,char*,int) ;
 scalar_t__* wcsrchr (scalar_t__*,char) ;

BOOLEAN PacketGetAddressesFromRegistry(LPTSTR AdapterName, npf_if_addr* buffer, PLONG NEntries)
{
 char *AdapterNameA;
 WCHAR *AdapterNameU;
 WCHAR *ifname;
 HKEY SystemKey;
 HKEY InterfaceKey;
 HKEY ParametersKey;
 HKEY TcpIpKey;
 HKEY UnderTcpKey;
 LONG status;
 WCHAR String[1024+1];
 DWORD RegType;
 ULONG BufLen;
 DWORD DHCPEnabled;
 struct sockaddr_in *TmpAddr, *TmpBroad;
 LONG naddrs,nmasks,StringPos;
 DWORD ZeroBroadcast;

 AdapterNameA = (char*)AdapterName;
 if(AdapterNameA[1] != 0) {
  AdapterNameU = SChar2WChar(AdapterNameA);
  AdapterName = AdapterNameU;
 } else {
  AdapterNameU = ((void*)0);
 }
 ifname = wcsrchr(AdapterName, '\\');
 if (ifname == ((void*)0))
  ifname = AdapterName;
 else
  ifname++;
 if (wcsncmp(ifname, L"SEE_", 4) == 0)
  ifname += 4;

 if( RegOpenKeyEx(HKEY_LOCAL_MACHINE, TEXT("SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces"), 0, KEY_READ, &UnderTcpKey) == ERROR_SUCCESS)
 {
  status = RegOpenKeyEx(UnderTcpKey,ifname,0,KEY_READ,&TcpIpKey);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(UnderTcpKey);
   goto fail;
  }
 }
 else
 {


  status = RegOpenKeyEx(HKEY_LOCAL_MACHINE,TEXT("SYSTEM\\CurrentControlSet\\Services"),0,KEY_READ,&SystemKey);
  if (status != ERROR_SUCCESS)
   goto fail;
  status = RegOpenKeyEx(SystemKey,ifname,0,KEY_READ,&InterfaceKey);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(SystemKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }
  RegCloseKey(SystemKey);
  status = RegOpenKeyEx(InterfaceKey,TEXT("Parameters"),0,KEY_READ,&ParametersKey);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(InterfaceKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }
  RegCloseKey(InterfaceKey);
  status = RegOpenKeyEx(ParametersKey,TEXT("TcpIp"),0,KEY_READ,&TcpIpKey);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(ParametersKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }
  RegCloseKey(ParametersKey);
  BufLen = sizeof String;
 }

 BufLen = 4;

 status=RegQueryValueEx(TcpIpKey,TEXT("UseZeroBroadcast"),((void*)0),&RegType,(LPBYTE)&ZeroBroadcast,&BufLen);
 if (status != ERROR_SUCCESS)
  ZeroBroadcast=0;

 BufLen = 4;

 status=RegQueryValueEx(TcpIpKey,TEXT("EnableDHCP"),((void*)0),&RegType,(LPBYTE)&DHCPEnabled,&BufLen);
 if (status != ERROR_SUCCESS)
  DHCPEnabled=0;



 if(DHCPEnabled){

  BufLen = sizeof String;

  status = RegQueryValueEx(TcpIpKey,TEXT("DhcpIPAddress"),((void*)0),&RegType,(LPBYTE)String,&BufLen);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }


  StringPos = 0;
  for(naddrs = 0;naddrs <* NEntries;naddrs++){
   TmpAddr = (struct sockaddr_in *) &(buffer[naddrs].IPAddress);

   if((TmpAddr->sin_addr.S_un.S_addr = inet_addrU(String + StringPos))!= -1){
    TmpAddr->sin_family = AF_INET;

    TmpBroad = (struct sockaddr_in *) &(buffer[naddrs].Broadcast);
    TmpBroad->sin_family = AF_INET;
    if(ZeroBroadcast==0)
     TmpBroad->sin_addr.S_un.S_addr = 0xffffffff;
    else
     TmpBroad->sin_addr.S_un.S_addr = 0;

    while(*(String + StringPos) != 0)StringPos++;
    StringPos++;

    if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
     break;
   }
   else break;
  }

  BufLen = sizeof String;

  status = RegQueryValueEx(TcpIpKey,TEXT("DhcpSubnetMask"),((void*)0),&RegType,(LPBYTE)String,&BufLen);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }


  StringPos = 0;
  for(nmasks = 0;nmasks < *NEntries;nmasks++){
   TmpAddr = (struct sockaddr_in *) &(buffer[nmasks].SubnetMask);

   if((TmpAddr->sin_addr.S_un.S_addr = inet_addrU(String + StringPos))!= -1){
    TmpAddr->sin_family = AF_INET;

    while(*(String + StringPos) != 0)StringPos++;
    StringPos++;

    if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
     break;
   }
   else break;
  }


  if(nmasks != naddrs){
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }

 }
 else{

  BufLen = sizeof String;

  status = RegQueryValueEx(TcpIpKey,TEXT("IPAddress"),((void*)0),&RegType,(LPBYTE)String,&BufLen);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }


  StringPos = 0;
  for(naddrs = 0;naddrs < *NEntries;naddrs++){
   TmpAddr = (struct sockaddr_in *) &(buffer[naddrs].IPAddress);

   if((TmpAddr->sin_addr.S_un.S_addr = inet_addrU(String + StringPos))!= -1){
    TmpAddr->sin_family = AF_INET;

    TmpBroad = (struct sockaddr_in *) &(buffer[naddrs].Broadcast);
    TmpBroad->sin_family = AF_INET;
    if(ZeroBroadcast==0)
     TmpBroad->sin_addr.S_un.S_addr = 0xffffffff;
    else
     TmpBroad->sin_addr.S_un.S_addr = 0;

    while(*(String + StringPos) != 0)StringPos++;
    StringPos++;

    if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
     break;
   }
   else break;
  }

  BufLen = sizeof String;

  status = RegQueryValueEx(TcpIpKey,TEXT("SubnetMask"),((void*)0),&RegType,(LPBYTE)String,&BufLen);
  if (status != ERROR_SUCCESS) {
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }


  StringPos = 0;
  for(nmasks = 0;nmasks <* NEntries;nmasks++){
   TmpAddr = (struct sockaddr_in *) &(buffer[nmasks].SubnetMask);

   if((TmpAddr->sin_addr.S_un.S_addr = inet_addrU(String + StringPos))!= -1){
    TmpAddr->sin_family = AF_INET;

    while(*(String + StringPos) != 0)StringPos++;
    StringPos++;

    if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
     break;
   }
   else break;
  }


  if(nmasks != naddrs){
   RegCloseKey(TcpIpKey);
   RegCloseKey(UnderTcpKey);
   goto fail;
  }

 }

 *NEntries = naddrs + 1;

 RegCloseKey(TcpIpKey);
 RegCloseKey(UnderTcpKey);

 if (status != ERROR_SUCCESS) {
  goto fail;
 }


 if (AdapterNameU != ((void*)0))
  GlobalFreePtr(AdapterNameU);
 return TRUE;

fail:
 if (AdapterNameU != ((void*)0))
  GlobalFreePtr(AdapterNameU);
    return FALSE;
}
