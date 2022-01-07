
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_11__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
struct TYPE_10__ {TYPE_1__* Crl; int Key; int HubName; } ;
struct TYPE_9__ {int DigestSHA1; int DigestMD5; TYPE_3__* Name; int Serial; } ;
typedef TYPE_2__ RPC_CRL ;
typedef int PACK ;
typedef TYPE_3__ NAME ;
typedef int CRL ;
typedef TYPE_4__ BUF ;


 void* CopyUniStr (int *) ;
 int FreeBuf (TYPE_4__*) ;
 int MAX_SIZE ;
 scalar_t__ MD5_SIZE ;
 int NewXSerial (int ,int ) ;
 TYPE_4__* PackGetBuf (int *,char*) ;
 int PackGetData (int *,char*,int ) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 scalar_t__ PackGetUniStr (int *,char*,int *,int) ;
 scalar_t__ SHA1_SIZE ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcCrl(RPC_CRL *t, PACK *p)
{
 BUF *b;
 NAME *n;
 wchar_t tmp[MAX_SIZE];

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_CRL));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Key = PackGetInt(p, "Key");
 b = PackGetBuf(p, "Serial");
 t->Crl = ZeroMalloc(sizeof(CRL));
 if (b != ((void*)0))
 {
  t->Crl->Serial = NewXSerial(b->Buf, b->Size);
  FreeBuf(b);
 }
 t->Crl->Name = ZeroMalloc(sizeof(NAME));
 n = t->Crl->Name;
 if (PackGetUniStr(p, "CommonName", tmp, sizeof(tmp)))
 {
  n->CommonName = CopyUniStr(tmp);
 }
 if (PackGetUniStr(p, "Organization", tmp, sizeof(tmp)))
 {
  n->Organization = CopyUniStr(tmp);
 }
 if (PackGetUniStr(p, "Unit", tmp, sizeof(tmp)))
 {
  n->Unit = CopyUniStr(tmp);
 }
 if (PackGetUniStr(p, "Country", tmp, sizeof(tmp)))
 {
  n->Country = CopyUniStr(tmp);
 }
 if (PackGetUniStr(p, "State", tmp, sizeof(tmp)))
 {
  n->State = CopyUniStr(tmp);
 }
 if (PackGetUniStr(p, "Local", tmp, sizeof(tmp)))
 {
  n->Local = CopyUniStr(tmp);
 }
 if (PackGetDataSize(p, "DigestMD5") == MD5_SIZE)
 {
  PackGetData(p, "DigestMD5", t->Crl->DigestMD5);
 }
 if (PackGetDataSize(p, "DigestSHA1") == SHA1_SIZE)
 {
  PackGetData(p, "DigestSHA1", t->Crl->DigestSHA1);
 }
}
