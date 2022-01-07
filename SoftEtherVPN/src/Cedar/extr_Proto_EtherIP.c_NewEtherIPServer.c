
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int IsTunnelMode; void* CryptBlockSize; int CryptName; void* ServerPort; int ServerIP; void* ClientPort; int ClientIP; int Lock; int Now; int SendPacketList; int ClientId; int * Ike; int * IPsec; TYPE_2__* Cedar; void* Id; int Ref; } ;
typedef int IPSEC_SERVER ;
typedef int IP ;
typedef int IKE_SERVER ;
typedef TYPE_1__ ETHERIP_SERVER ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int EtherIPLog (TYPE_1__*,char*) ;
 int NewList (int *) ;
 int NewLock () ;
 int NewRef () ;
 int StrCpy (int ,int,char*) ;
 int Tick64 () ;
 TYPE_1__* ZeroMalloc (int) ;

ETHERIP_SERVER *NewEtherIPServer(CEDAR *cedar, IPSEC_SERVER *ipsec, IKE_SERVER *ike,
         IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, char *crypt_name,
         bool is_tunnel_mode, UINT crypt_block_size,
         char *client_id, UINT id)
{
 ETHERIP_SERVER *s;

 if (cedar == ((void*)0) || ipsec == ((void*)0) || ike == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || client_id == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(ETHERIP_SERVER));

 s->Ref = NewRef();

 s->Id = id;

 s->Cedar = cedar;
 AddRef(s->Cedar->ref);
 s->IPsec = ipsec;
 s->Ike = ike;
 s->IsTunnelMode = is_tunnel_mode;

 StrCpy(s->ClientId, sizeof(s->ClientId), client_id);

 s->SendPacketList = NewList(((void*)0));

 s->Now = Tick64();

 s->Lock = NewLock();

 Copy(&s->ClientIP, client_ip, sizeof(IP));
 s->ClientPort = client_port;

 Copy(&s->ServerIP, server_ip, sizeof(IP));
 s->ServerPort = server_port;

 StrCpy(s->CryptName, sizeof(s->CryptName), crypt_name);
 s->CryptBlockSize = crypt_block_size;

 EtherIPLog(s, "LE_START_MODULE");

 return s;
}
