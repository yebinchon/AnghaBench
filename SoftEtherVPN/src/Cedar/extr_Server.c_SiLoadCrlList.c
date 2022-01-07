
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef int u ;
typedef int tmp ;
typedef int st ;
typedef int org ;
typedef int l ;
typedef int cn ;
typedef int c ;
typedef size_t UINT ;
struct TYPE_12__ {int Size; int Buf; } ;
struct TYPE_11__ {int DigestSHA1; int DigestMD5; int Serial; int Name; } ;
struct TYPE_10__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef int FOLDER ;
typedef TYPE_2__ CRL ;
typedef TYPE_3__ BUF ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,int ) ;
 scalar_t__ CfgGetStr (int *,char*,char*,int) ;
 int CfgGetUniStr (int *,char*,int *,int) ;
 int Copy (int ,int ,scalar_t__) ;
 int FreeBuf (TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 int Insert (int *,TYPE_2__*) ;
 int LockList (int *) ;
 int MAX_SIZE ;
 scalar_t__ MD5_SIZE ;
 int NewName (int *,int *,int *,int *,int *,int *) ;
 int NewXSerial (int ,int) ;
 scalar_t__ SHA1_SIZE ;
 TYPE_3__* StrToBin (char*) ;
 int UnlockList (int *) ;
 TYPE_2__* ZeroMalloc (int) ;

void SiLoadCrlList(LIST *o, FOLDER *f)
{

 if (o == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  TOKEN_LIST *t;

  t = CfgEnumFolderToTokenList(f);

  for (i = 0;i < t->NumTokens;i++)
  {
   CRL *crl;
   FOLDER *ff = CfgGetFolder(f, t->Token[i]);
   wchar_t cn[MAX_SIZE], org[MAX_SIZE], u[MAX_SIZE], c[MAX_SIZE],
    st[MAX_SIZE], l[MAX_SIZE];
   char tmp[MAX_SIZE];

   if (ff != ((void*)0))
   {
    BUF *b;

    crl = ZeroMalloc(sizeof(CRL));

    CfgGetUniStr(ff, "CommonName", cn, sizeof(cn));
    CfgGetUniStr(ff, "Organization", org, sizeof(org));
    CfgGetUniStr(ff, "Unit", u, sizeof(u));
    CfgGetUniStr(ff, "Country", c, sizeof(c));
    CfgGetUniStr(ff, "State", st, sizeof(st));
    CfgGetUniStr(ff, "Local", l, sizeof(l));

    crl->Name = NewName(cn, org, u, c, st, l);

    if (CfgGetStr(ff, "Serial", tmp, sizeof(tmp)))
    {
     b = StrToBin(tmp);

     if (b != ((void*)0))
     {
      if (b->Size >= 1)
      {
       crl->Serial = NewXSerial(b->Buf, b->Size);
      }

      FreeBuf(b);
     }
    }

    if (CfgGetStr(ff, "DigestMD5", tmp, sizeof(tmp)))
    {
     b = StrToBin(tmp);

     if (b != ((void*)0))
     {
      if (b->Size == MD5_SIZE)
      {
       Copy(crl->DigestMD5, b->Buf, MD5_SIZE);
      }

      FreeBuf(b);
     }
    }

    if (CfgGetStr(ff, "DigestSHA1", tmp, sizeof(tmp)))
    {
     b = StrToBin(tmp);

     if (b != ((void*)0))
     {
      if (b->Size == SHA1_SIZE)
      {
       Copy(crl->DigestSHA1, b->Buf, SHA1_SIZE);
      }

      FreeBuf(b);
     }
    }

    Insert(o, crl);
   }
  }

  FreeToken(t);
 }
 UnlockList(o);
}
