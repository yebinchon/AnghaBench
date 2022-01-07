
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * Local; int * State; int * Country; int * Unit; int * Organization; int * CommonName; } ;
struct TYPE_8__ {TYPE_2__* Crl; int Key; int HubName; } ;
struct TYPE_7__ {int DigestSHA1; int DigestMD5; TYPE_4__* Name; TYPE_1__* Serial; } ;
struct TYPE_6__ {int size; int data; } ;
typedef TYPE_3__ RPC_CRL ;
typedef int PACK ;
typedef TYPE_4__ NAME ;


 int IsZero (int ,int ) ;
 int MD5_SIZE ;
 int PackAddData (int *,char*,int ,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int *) ;
 int SHA1_SIZE ;

void OutRpcCrl(PACK *p, RPC_CRL *t)
{
 NAME *n;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddInt(p, "Key", t->Key);

 if (t->Crl == ((void*)0))
 {
  return;
 }

 if (t->Crl->Serial != ((void*)0))
 {
  PackAddData(p, "Serial", t->Crl->Serial->data, t->Crl->Serial->size);
 }
 n = t->Crl->Name;
 if (n->CommonName != ((void*)0))
 {
  PackAddUniStr(p, "CommonName", n->CommonName);
 }
 if (n->Organization != ((void*)0))
 {
  PackAddUniStr(p, "Organization", n->Organization);
 }
 if (n->Unit != ((void*)0))
 {
  PackAddUniStr(p, "Unit", n->Unit);
 }
 if (n->Country != ((void*)0))
 {
  PackAddUniStr(p, "Country", n->Country);
 }
 if (n->State != ((void*)0))
 {
  PackAddUniStr(p, "State", n->State);
 }
 if (n->Local != ((void*)0))
 {
  PackAddUniStr(p, "Local", n->Local);
 }
 if (IsZero(t->Crl->DigestMD5, MD5_SIZE) == 0)
 {
  PackAddData(p, "DigestMD5", t->Crl->DigestMD5, MD5_SIZE);
 }
 if (IsZero(t->Crl->DigestSHA1, SHA1_SIZE) == 0)
 {
  PackAddData(p, "DigestSHA1", t->Crl->DigestSHA1, SHA1_SIZE);
 }
}
