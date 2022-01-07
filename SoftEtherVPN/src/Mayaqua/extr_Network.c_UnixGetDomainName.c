
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int * ReadDump (char*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (char*,int ,int ) ;
 int Trim (char*) ;

bool UnixGetDomainName(char *name, UINT size)
{
 bool ret = 0;
 BUF *b = ReadDump("/etc/resolv.conf");

 if (b == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  char *s = CfgReadNextLine(b);
  TOKEN_LIST *t;

  if (s == ((void*)0))
  {
   break;
  }

  Trim(s);

  t = ParseToken(s, " \t");
  if (t != ((void*)0))
  {
   if (t->NumTokens == 2)
   {
    if (StrCmpi(t->Token[0], "domain") == 0)
    {
     StrCpy(name, size, t->Token[1]);
     ret = 1;
    }
   }
   FreeToken(t);
  }

  Free(s);
 }

 FreeBuf(b);

 return ret;
}
