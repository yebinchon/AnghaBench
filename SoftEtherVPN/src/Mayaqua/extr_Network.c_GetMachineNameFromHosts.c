
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int * ReadDump (char*) ;
 int StartWith (int ,char*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (char*,size_t,int ) ;

bool GetMachineNameFromHosts(char *name, UINT size)
{
 bool ret = 0;
 char *s;
 BUF *b;

 if (name == ((void*)0))
 {
  return 0;
 }

 b = ReadDump("/etc/hosts");
 if (b == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  s = CfgReadNextLine(b);
  if (s == ((void*)0))
  {
   break;
  }
  else
  {
   TOKEN_LIST *t = ParseToken(s, " \t");

   if (t != ((void*)0))
   {
    if (t->NumTokens >= 2)
    {
     if (StrCmpi(t->Token[0], "127.0.0.1") == 0)
     {
      UINT i;

      for (i = 1;i < t->NumTokens;i++)
      {
       if (StartWith(t->Token[i], "localhost") == 0)
       {
        StrCpy(name, size, t->Token[i]);
        ret = 1;
       }
      }
     }
    }
   }
   FreeToken(t);
  }

  Free(s);
 }

 FreeBuf(b);

 return ret;
}
