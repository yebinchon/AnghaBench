
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {TYPE_1__* Serial; int DigestSHA1; int DigestMD5; TYPE_2__* Name; } ;
struct TYPE_6__ {int Local; int State; int Country; int Unit; int Organization; int CommonName; } ;
struct TYPE_5__ {int size; int data; } ;
typedef TYPE_2__ NAME ;
typedef int LIST ;
typedef int FOLDER ;
typedef TYPE_3__ CRL ;


 int BinToStr (char*,int,int ,int ) ;
 int CfgAddStr (int *,char*,char*) ;
 int CfgAddUniStr (int *,char*,int ) ;
 int * CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 int IsZero (int ,int ) ;
 TYPE_3__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int MAX_SIZE ;
 int MD5_SIZE ;
 int SHA1_SIZE ;
 int UniIsEmptyStr (int ) ;
 int UnlockList (int *) ;

void SiWriteCrlList(FOLDER *f, LIST *o)
{

 if (f == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   char name[MAX_SIZE];
   CRL *crl = LIST_DATA(o, i);
   FOLDER *ff;
   NAME *n;

   Format(name, sizeof(name), "Crl%u", i);

   ff = CfgCreateFolder(f, name);
   n = crl->Name;

   if (UniIsEmptyStr(n->CommonName) == 0)
   {
    CfgAddUniStr(ff, "CommonName", n->CommonName);
   }

   if (UniIsEmptyStr(n->Organization) == 0)
   {
    CfgAddUniStr(ff, "Organization", n->Organization);
   }

   if (UniIsEmptyStr(n->Unit) == 0)
   {
    CfgAddUniStr(ff, "Unit", n->Unit);
   }

   if (UniIsEmptyStr(n->Country) == 0)
   {
    CfgAddUniStr(ff, "Country", n->Country);
   }

   if (UniIsEmptyStr(n->State) == 0)
   {
    CfgAddUniStr(ff, "State", n->State);
   }

   if (UniIsEmptyStr(n->Local) == 0)
   {
    CfgAddUniStr(ff, "Local", n->Local);
   }

   if (IsZero(crl->DigestMD5, MD5_SIZE) == 0)
   {
    char tmp[MAX_SIZE];

    BinToStr(tmp, sizeof(tmp), crl->DigestMD5, MD5_SIZE);
    CfgAddStr(ff, "DigestMD5", tmp);
   }

   if (IsZero(crl->DigestSHA1, SHA1_SIZE) == 0)
   {
    char tmp[MAX_SIZE];

    BinToStr(tmp, sizeof(tmp), crl->DigestSHA1, SHA1_SIZE);
    CfgAddStr(ff, "DigestSHA1", tmp);
   }

   if (crl->Serial != ((void*)0))
   {
    char tmp[MAX_SIZE];

    BinToStr(tmp, sizeof(tmp), crl->Serial->data, crl->Serial->size);
    CfgAddStr(ff, "Serial", tmp);
   }
  }
 }
 UnlockList(o);
}
