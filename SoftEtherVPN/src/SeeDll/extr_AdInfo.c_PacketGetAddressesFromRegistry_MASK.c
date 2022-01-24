#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int S_addr; } ;
struct TYPE_6__ {TYPE_1__ S_un; } ;
struct sockaddr_in {void* sin_family; TYPE_2__ sin_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  Broadcast; int /*<<< orphan*/  IPAddress; } ;
typedef  TYPE_3__ npf_if_addr ;
typedef  scalar_t__ WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  scalar_t__* PLONG ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 void* AF_INET ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC4 (char*) ; 
 scalar_t__* FUNC5 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC6 (scalar_t__*) ; 
 scalar_t__ FUNC7 (scalar_t__*,char*,int) ; 
 scalar_t__* FUNC8 (scalar_t__*,char) ; 

BOOLEAN FUNC9(LPTSTR AdapterName, npf_if_addr* buffer, PLONG NEntries)
{
	char	*AdapterNameA;
	WCHAR	*AdapterNameU;
	WCHAR	*ifname;
	HKEY	SystemKey;
	HKEY	InterfaceKey;
	HKEY	ParametersKey;
	HKEY	TcpIpKey;
	HKEY	UnderTcpKey;
	LONG	status;
	WCHAR	String[1024+1];
	DWORD	RegType;
	ULONG	BufLen;
	DWORD	DHCPEnabled;
	struct	sockaddr_in *TmpAddr, *TmpBroad;
	LONG	naddrs,nmasks,StringPos;
	DWORD	ZeroBroadcast;

	AdapterNameA = (char*)AdapterName;
	if(AdapterNameA[1] != 0) {	//ASCII
		AdapterNameU = FUNC4(AdapterNameA);
		AdapterName = AdapterNameU;
	} else {				//Unicode
		AdapterNameU = NULL;
	}
	ifname = FUNC8(AdapterName, '\\');
	if (ifname == NULL)
		ifname = AdapterName;
	else
		ifname++;
	if (FUNC7(ifname, L"SEE_", 4) == 0)
		ifname += 4;

	if(	FUNC2(HKEY_LOCAL_MACHINE, FUNC5("SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters\\Interfaces"), 0, KEY_READ, &UnderTcpKey) == ERROR_SUCCESS)
	{
		status = FUNC2(UnderTcpKey,ifname,0,KEY_READ,&TcpIpKey);
		if (status != ERROR_SUCCESS) {
			FUNC1(UnderTcpKey);
			goto fail;
		}
	}
	else
	{
		
		// Query the registry key with the interface's addresses
		status = FUNC2(HKEY_LOCAL_MACHINE,FUNC5("SYSTEM\\CurrentControlSet\\Services"),0,KEY_READ,&SystemKey);
		if (status != ERROR_SUCCESS)
			goto fail;
		status = FUNC2(SystemKey,ifname,0,KEY_READ,&InterfaceKey);
		if (status != ERROR_SUCCESS) {
			FUNC1(SystemKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		FUNC1(SystemKey);
		status = FUNC2(InterfaceKey,FUNC5("Parameters"),0,KEY_READ,&ParametersKey);
		if (status != ERROR_SUCCESS) {
			FUNC1(InterfaceKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		FUNC1(InterfaceKey);
		status = FUNC2(ParametersKey,FUNC5("TcpIp"),0,KEY_READ,&TcpIpKey);
		if (status != ERROR_SUCCESS) {
			FUNC1(ParametersKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		FUNC1(ParametersKey);
		BufLen = sizeof String;
	}

	BufLen = 4;
	/* Try to detect if the interface has a zero broadcast addr */
	status=FUNC3(TcpIpKey,FUNC5("UseZeroBroadcast"),NULL,&RegType,(LPBYTE)&ZeroBroadcast,&BufLen);
	if (status != ERROR_SUCCESS)
		ZeroBroadcast=0;
	
	BufLen = 4;
	/* See if DHCP is used by this system */
	status=FUNC3(TcpIpKey,FUNC5("EnableDHCP"),NULL,&RegType,(LPBYTE)&DHCPEnabled,&BufLen);
	if (status != ERROR_SUCCESS)
		DHCPEnabled=0;
	
	
	/* Retrieve the addresses */
	if(DHCPEnabled){
		
		BufLen = sizeof String;
		// Open the key with the addresses
		status = FUNC3(TcpIpKey,FUNC5("DhcpIPAddress"),NULL,&RegType,(LPBYTE)String,&BufLen);
		if (status != ERROR_SUCCESS) {
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}

		// scan the key to obtain the addresses
		StringPos = 0;
		for(naddrs = 0;naddrs <* NEntries;naddrs++){
			TmpAddr = (struct sockaddr_in *) &(buffer[naddrs].IPAddress);
			
			if((TmpAddr->sin_addr.S_un.S_addr = FUNC6(String + StringPos))!= -1){
				TmpAddr->sin_family = AF_INET;
				
				TmpBroad = (struct sockaddr_in *) &(buffer[naddrs].Broadcast);
				TmpBroad->sin_family = AF_INET;
				if(ZeroBroadcast==0)
					TmpBroad->sin_addr.S_un.S_addr = 0xffffffff; // 255.255.255.255
				else
					TmpBroad->sin_addr.S_un.S_addr = 0; // 0.0.0.0

				while(*(String + StringPos) != 0)StringPos++;
				StringPos++;
				
				if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
					break;				
			}
			else break;
		}		
		
		BufLen = sizeof String;
		// Open the key with the netmasks
		status = FUNC3(TcpIpKey,FUNC5("DhcpSubnetMask"),NULL,&RegType,(LPBYTE)String,&BufLen);
		if (status != ERROR_SUCCESS) {
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		
		// scan the key to obtain the masks
		StringPos = 0;
		for(nmasks = 0;nmasks < *NEntries;nmasks++){
			TmpAddr = (struct sockaddr_in *) &(buffer[nmasks].SubnetMask);
			
			if((TmpAddr->sin_addr.S_un.S_addr = FUNC6(String + StringPos))!= -1){
				TmpAddr->sin_family = AF_INET;
				
				while(*(String + StringPos) != 0)StringPos++;
				StringPos++;
								
				if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
					break;
			}
			else break;
		}		
		
		// The number of masks MUST be equal to the number of addresses
		if(nmasks != naddrs){
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
				
	}
	else{
		
		BufLen = sizeof String;
		// Open the key with the addresses
		status = FUNC3(TcpIpKey,FUNC5("IPAddress"),NULL,&RegType,(LPBYTE)String,&BufLen);
		if (status != ERROR_SUCCESS) {
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		
		// scan the key to obtain the addresses
		StringPos = 0;
		for(naddrs = 0;naddrs < *NEntries;naddrs++){
			TmpAddr = (struct sockaddr_in *) &(buffer[naddrs].IPAddress);
			
			if((TmpAddr->sin_addr.S_un.S_addr = FUNC6(String + StringPos))!= -1){
				TmpAddr->sin_family = AF_INET;

				TmpBroad = (struct sockaddr_in *) &(buffer[naddrs].Broadcast);
				TmpBroad->sin_family = AF_INET;
				if(ZeroBroadcast==0)
					TmpBroad->sin_addr.S_un.S_addr = 0xffffffff; // 255.255.255.255
				else
					TmpBroad->sin_addr.S_un.S_addr = 0; // 0.0.0.0
				
				while(*(String + StringPos) != 0)StringPos++;
				StringPos++;
				
				if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
					break;
			}
			else break;
		}		
		
		BufLen = sizeof String;
		// Open the key with the netmasks
		status = FUNC3(TcpIpKey,FUNC5("SubnetMask"),NULL,&RegType,(LPBYTE)String,&BufLen);
		if (status != ERROR_SUCCESS) {
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
		
		// scan the key to obtain the masks
		StringPos = 0;
		for(nmasks = 0;nmasks <* NEntries;nmasks++){
			TmpAddr = (struct sockaddr_in *) &(buffer[nmasks].SubnetMask);
			
			if((TmpAddr->sin_addr.S_un.S_addr = FUNC6(String + StringPos))!= -1){
				TmpAddr->sin_family = AF_INET;
				
				while(*(String + StringPos) != 0)StringPos++;
				StringPos++;
				
				if(*(String + StringPos) == 0 || (StringPos * sizeof (WCHAR)) >= BufLen)
					break;
			}
			else break;
		}		
		
		// The number of masks MUST be equal to the number of addresses
		if(nmasks != naddrs){
			FUNC1(TcpIpKey);
			FUNC1(UnderTcpKey);
			goto fail;
		}
				
	}
	
	*NEntries = naddrs + 1;

	FUNC1(TcpIpKey);
	FUNC1(UnderTcpKey);
	
	if (status != ERROR_SUCCESS) {
		goto fail;
	}
	
	
	if (AdapterNameU != NULL)
		FUNC0(AdapterNameU);
	return TRUE;
	
fail:
	if (AdapterNameU != NULL)
		FUNC0(AdapterNameU);
    return FALSE;
}