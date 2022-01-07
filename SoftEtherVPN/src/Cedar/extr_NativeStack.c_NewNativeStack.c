
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_15__ {int ref; } ;
struct TYPE_14__ {int IsRawIpMode; } ;
struct TYPE_13__ {TYPE_2__* Eth; int IsIpRawMode; int MainThread; int Cancel; int DeviceName; int MacAddress; int Sock2; int Ipc; TYPE_3__* Cedar; int Sock1; } ;
typedef TYPE_1__ NATIVE_STACK ;
typedef int IP ;
typedef TYPE_2__ ETH ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int BinToStr (char*,int,int ,int) ;
 int Debug (char*,char*) ;
 int EthGetCancel (TYPE_2__*) ;
 int GetLocalHostIP4 (int *) ;
 TYPE_3__* NewCedar (int *,int *) ;
 int NewIPCBySock (TYPE_3__*,int ,int ) ;
 int NewSocketPair (int *,int *,int *,int,int *,int) ;
 int NewThread (int ,TYPE_1__*) ;
 int NsGenMacAddress (int ,char*,char*) ;
 int NsMainThread ;
 TYPE_2__* OpenEth (char*,int,int,int *) ;
 int ReleaseCedar (TYPE_3__*) ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

NATIVE_STACK *NewNativeStack(CEDAR *cedar, char *device_name, char *mac_address_seed)
{
 ETH *eth;
 NATIVE_STACK *a;
 IP localhost;
 char tmp[64];
 bool release_cedar = 0;

 if (device_name == ((void*)0) || mac_address_seed == ((void*)0))
 {
  return ((void*)0);
 }

 GetLocalHostIP4(&localhost);


 eth = OpenEth(device_name, 0, 0, ((void*)0));
 if (eth == ((void*)0))
 {
  return ((void*)0);
 }

 if (cedar == ((void*)0))
 {
  cedar = NewCedar(((void*)0), ((void*)0));
  release_cedar = 1;
 }

 a = ZeroMalloc(sizeof(NATIVE_STACK));

 NewSocketPair(&a->Sock1, &a->Sock2, &localhost, 1, &localhost, 1);

 a->Cedar = cedar;
 AddRef(a->Cedar->ref);

 NsGenMacAddress(a->MacAddress, mac_address_seed, device_name);

 BinToStr(tmp, sizeof(tmp), a->MacAddress, sizeof(a->MacAddress));
 Debug("NewNativeStack: MAC Address = %s\n", tmp);

 a->Ipc = NewIPCBySock(cedar, a->Sock2, a->MacAddress);

 StrCpy(a->DeviceName, sizeof(a->DeviceName), device_name);

 a->Eth = eth;
 a->Cancel = EthGetCancel(eth);

 a->MainThread = NewThread(NsMainThread, a);

 if (release_cedar)
 {
  ReleaseCedar(cedar);
 }

 a->IsIpRawMode = a->Eth->IsRawIpMode;

 return a;
}
