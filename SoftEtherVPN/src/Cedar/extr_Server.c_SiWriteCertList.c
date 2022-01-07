
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int X ;
typedef scalar_t__ UINT ;
typedef int LIST ;
typedef int FOLDER ;
typedef int BUF ;


 int CfgAddBuf (int ,char*,int *) ;
 int CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 int FreeBuf (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int MAX_SIZE ;
 int UnlockList (int *) ;
 int * XToBuf (int *,int) ;

void SiWriteCertList(FOLDER *f, LIST *o)
{

 if (f == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  X *x;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   char name[MAX_SIZE];
   BUF *b;
   x = LIST_DATA(o, i);
   Format(name, sizeof(name), "Cert%u", i);
   b = XToBuf(x, 0);
   if (b != ((void*)0))
   {
    CfgAddBuf(CfgCreateFolder(f, name), "X509", b);
    FreeBuf(b);
   }
  }
 }
 UnlockList(o);
}
