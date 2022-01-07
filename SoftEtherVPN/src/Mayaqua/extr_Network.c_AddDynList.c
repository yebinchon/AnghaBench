
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int PACK ;
typedef int BUF ;


 int * BufToPack (int *) ;
 int FreePack (int *) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* GetPackElementNames (int *) ;
 int PackGetInt64 (int *,char*) ;
 int SeekBufToBegin (int *) ;
 int SetDynListValue (char*,int ) ;

void AddDynList(BUF *b)
{
 PACK *p;
 TOKEN_LIST *t;

 if (b == ((void*)0))
 {
  return;
 }

 SeekBufToBegin(b);

 p = BufToPack(b);
 if (p == ((void*)0))
 {
  return;
 }

 t = GetPackElementNames(p);
 if (t != ((void*)0))
 {
  UINT i;

  for (i = 0;i < t->NumTokens;i++)
  {
   char *name = t->Token[i];
   UINT64 v = PackGetInt64(p, name);

   SetDynListValue(name, v);
  }

  FreeToken(t);
 }

 FreePack(p);
}
