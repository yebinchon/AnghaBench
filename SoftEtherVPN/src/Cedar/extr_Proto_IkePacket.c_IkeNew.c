
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int FlagEncrypted; int FlagCommit; int FlagAuthOnly; int * PayloadList; int MessageId; int ExchangeType; void* ResponderCookie; void* InitiatorCookie; } ;
typedef int LIST ;
typedef TYPE_1__ IKE_PACKET ;


 TYPE_1__* ZeroMalloc (int) ;

IKE_PACKET *IkeNew(UINT64 init_cookie, UINT64 resp_cookie, UCHAR exchange_type,
       bool encrypted, bool commit, bool auth_only, UINT msg_id,
       LIST *payload_list)
{
 IKE_PACKET *p = ZeroMalloc(sizeof(IKE_PACKET));

 p->InitiatorCookie = init_cookie;
 p->ResponderCookie = resp_cookie;
 p->ExchangeType = exchange_type;
 p->FlagEncrypted = encrypted;
 p->FlagCommit = commit;
 p->FlagAuthOnly = auth_only;
 p->MessageId = msg_id;
 p->PayloadList = payload_list;

 return p;
}
