
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_4__ {int HashCodeForRecv; int HashCodeForSend; void* PublicPort; void* PublicIp; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; void* Protocol; } ;
typedef TYPE_1__ NATIVE_NAT_ENTRY ;


 int INFINITE ;
 int Zero (TYPE_1__*,int) ;

void NnSetNat(NATIVE_NAT_ENTRY *e, UINT protocol, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UINT pub_ip, UINT pub_port)
{

 if (e == ((void*)0))
 {
  return;
 }

 Zero(e, sizeof(NATIVE_NAT_ENTRY));

 e->Protocol = protocol;
 e->SrcIp = src_ip;
 e->SrcPort = src_port;
 e->DestIp = dest_ip;
 e->DestPort = dest_port;
 e->PublicIp = pub_ip;
 e->PublicPort = pub_port;
 e->HashCodeForSend = e->HashCodeForRecv = INFINITE;
}
