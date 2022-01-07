
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X ;
typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef int FOLDER ;
typedef int BUF ;


 int * BufToX (int *,int) ;
 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetBuf (int *,char*) ;
 int * CfgGetFolder (int *,int ) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 int Insert (int *,int *) ;
 int LockList (int *) ;
 int UnlockList (int *) ;

void SiLoadCertList(LIST *o, FOLDER *f)
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
   FOLDER *ff = CfgGetFolder(f, t->Token[i]);
   BUF *b;

   b = CfgGetBuf(ff, "X509");
   if (b != ((void*)0))
   {
    X *x = BufToX(b, 0);
    if (x != ((void*)0))
    {
     Insert(o, x);
    }
    FreeBuf(b);
   }
  }

  FreeToken(t);
 }
 UnlockList(o);
}
