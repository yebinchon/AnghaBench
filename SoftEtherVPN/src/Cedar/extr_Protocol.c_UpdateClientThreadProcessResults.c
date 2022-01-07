
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ LatestIgnoreBuild; } ;
struct TYPE_9__ {scalar_t__ MyBuild; scalar_t__ LatestBuild; int Param; int HaltFlag; int (* Callback ) (TYPE_2__*,scalar_t__,scalar_t__,int ,int ,int *,int ) ;TYPE_1__ Setting; int FamilyName; } ;
typedef TYPE_2__ UPDATE_CLIENT ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int NumTokens; int * Token; } ;
typedef TYPE_3__ TOKEN_LIST ;
typedef int BUF ;


 char* CfgReadNextLine (int *) ;
 int Free (char*) ;
 int FreeToken (TYPE_3__*) ;
 int IsEmptyStr (char*) ;
 TYPE_3__* ParseTokenWithNullStr (char*,char*) ;
 int SeekBufToBegin (int *) ;
 scalar_t__ ShortStrToDate64 (int ) ;
 int StartWith (char*,char*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 scalar_t__ ToInt (int ) ;
 int Trim (char*) ;
 int stub1 (TYPE_2__*,scalar_t__,scalar_t__,int ,int ,int *,int ) ;

void UpdateClientThreadProcessResults(UPDATE_CLIENT *c, BUF *b)
{
 bool exit = 0;

 if (c == ((void*)0) || b == ((void*)0))
 {
  return;
 }

 SeekBufToBegin(b);

 while (1)
 {
  char *line = CfgReadNextLine(b);
  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (StartWith(line, "#") == 0 && IsEmptyStr(line) == 0)
  {
   TOKEN_LIST *t = ParseTokenWithNullStr(line, " \t");

   if (t != ((void*)0))
   {
    if (t->NumTokens >= 5)
    {
     if (StrCmpi(t->Token[0], c->FamilyName) == 0)
     {

      UINT64 date = ShortStrToDate64(t->Token[1]);
      if (date != 0)
      {
       UINT build = ToInt(t->Token[2]);
       if (build != 0)
       {
        if (build > c->MyBuild && build > c->LatestBuild && build > c->Setting.LatestIgnoreBuild)
        {
         c->Callback(c, build, date, t->Token[3], t->Token[4], &c->HaltFlag, c->Param);

         c->LatestBuild = build;

         exit = 1;
        }
       }
      }
     }
    }

    FreeToken(t);
   }
  }

  Free(line);

  if (exit)
  {
   break;
  }
 }
}
