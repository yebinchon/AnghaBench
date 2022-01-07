
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_3__ {void* PublicPort; void* PublicIp; void* DestPort; void* DestIp; void* SrcPort; void* SrcIp; void* Protocol; } ;
typedef TYPE_1__ NAT_ENTRY ;



void SetNat(NAT_ENTRY *n, UINT protocol, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, UINT public_ip, UINT public_port)
{

 if (n == ((void*)0))
 {
  return;
 }

 n->Protocol = protocol;
 n->SrcIp = src_ip;
 n->SrcPort = src_port;
 n->DestIp = dest_ip;
 n->DestPort = dest_port;
 n->PublicIp = public_ip;
 n->PublicPort = public_port;
}
