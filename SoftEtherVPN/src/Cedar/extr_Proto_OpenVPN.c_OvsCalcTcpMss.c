
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_2__* CipherEncrypt; TYPE_1__* MdSend; } ;
struct TYPE_9__ {scalar_t__ Protocol; scalar_t__ Mode; int ClientIp; } ;
struct TYPE_8__ {int IsNullCipher; scalar_t__ BlockSize; scalar_t__ IvSize; } ;
struct TYPE_7__ {scalar_t__ Size; } ;
typedef TYPE_3__ OPENVPN_SESSION ;
typedef int OPENVPN_SERVER ;
typedef TYPE_4__ OPENVPN_CHANNEL ;


 scalar_t__ IsIP4 (int *) ;
 int MTU_FOR_PPPOE ;
 scalar_t__ OPENVPN_MODE_L2 ;
 scalar_t__ OPENVPN_PROTOCOL_TCP ;

UINT OvsCalcTcpMss(OPENVPN_SERVER *s, OPENVPN_SESSION *se, OPENVPN_CHANNEL *c)
{
 UINT ret = MTU_FOR_PPPOE;

 if (s == ((void*)0) || se == ((void*)0) || c == ((void*)0))
 {
  return 0;
 }

 if (c->MdSend == ((void*)0) || c->CipherEncrypt == ((void*)0))
 {
  return 0;
 }

 if (se->Protocol == OPENVPN_PROTOCOL_TCP)
 {

  return 0;
 }


 if (IsIP4(&se->ClientIp))
 {
  ret -= 20;
 }
 else
 {
  ret -= 40;
 }


 ret -= 8;


 ret -= 1;


 ret -= c->MdSend->Size;


 ret -= c->CipherEncrypt->IvSize;


 ret -= 4;

 if (c->CipherEncrypt->IsNullCipher == 0)
 {

  ret -= c->CipherEncrypt->BlockSize;
 }

 if (se->Mode == OPENVPN_MODE_L2)
 {

  ret -= 14;
 }


 ret -= 20;


 ret -= 20;

 return ret;
}
