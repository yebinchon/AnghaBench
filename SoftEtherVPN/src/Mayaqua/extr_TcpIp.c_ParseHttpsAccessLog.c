
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sni ;
typedef int h ;
struct TYPE_13__ {int IsSsl; int Path; int Port; int Hostname; int Method; } ;
struct TYPE_11__ {TYPE_1__* TCPHeader; } ;
struct TYPE_12__ {TYPE_2__ L4; int PayloadSize; int Payload; } ;
struct TYPE_10__ {int DstPort; } ;
typedef TYPE_3__ PKT ;
typedef TYPE_4__ HTTPLOG ;


 TYPE_4__* Clone (TYPE_4__*,int) ;
 int Endian16 (int ) ;
 int GetSniNameFromSslPacket (int ,int ,char*,int) ;
 int MAX_PATH ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_4__*,int) ;

HTTPLOG *ParseHttpsAccessLog(PKT *pkt)
{
 HTTPLOG h;
 char sni[MAX_PATH];

 if (pkt == ((void*)0))
 {
  return ((void*)0);
 }

 if (GetSniNameFromSslPacket(pkt->Payload, pkt->PayloadSize, sni, sizeof(sni)) == 0)
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));

 StrCpy(h.Method, sizeof(h.Method), "SSL_Connect");
 StrCpy(h.Hostname, sizeof(h.Hostname), sni);
 h.Port = Endian16(pkt->L4.TCPHeader->DstPort);
 StrCpy(h.Path, sizeof(h.Path), "/");
 h.IsSsl = 1;

 return Clone(&h, sizeof(h));
}
