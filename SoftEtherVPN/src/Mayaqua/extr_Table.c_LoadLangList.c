
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_9__ {int * LangList; int LcidList; int TitleLocal; int TitleEnglish; int Name; void* Id; } ;
struct TYPE_8__ {int NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef TYPE_2__ LANGLIST ;
typedef int BUF ;


 int Add (int *,TYPE_2__*) ;
 int AddIntDistinct (int ,size_t) ;
 char* CfgReadNextLine (int *) ;
 TYPE_2__* CopyStr (char*) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 char* LANGLIST_FILENAME ;
 char* LANGLIST_FILENAME_WINE ;
 scalar_t__ MsIsWine () ;
 int NewIntList (int) ;
 void* NewListFast (int *) ;
 TYPE_1__* ParseToken (char*,char*) ;
 int * ReadDump (char*) ;
 int StartWith (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int StrLen (char*) ;
 void* ToInt (char*) ;
 int Trim (char*) ;
 int UniReplaceStrEx (int ,int,int ,char*,char*,int) ;
 int Utf8ToUni (int ,int,char*,int ) ;
 TYPE_2__* ZeroMalloc (int) ;

LIST *LoadLangList()
{
 LIST *o = NewListFast(((void*)0));
 char *filename = LANGLIST_FILENAME;
 BUF *b;
 b = ReadDump(filename);
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 while (1)
 {
  char *line = CfgReadNextLine(b);

  if (line == ((void*)0))
  {
   break;
  }

  Trim(line);

  if (IsEmptyStr(line) == 0 && StartWith(line, "#") == 0)
  {
   TOKEN_LIST *t = ParseToken(line, "\t ");
   if (t != ((void*)0))
   {
    if (t->NumTokens == 6)
    {
     LANGLIST *e = ZeroMalloc(sizeof(LANGLIST));
     TOKEN_LIST *t2;

     e->Id = ToInt(t->Token[0]);
     StrCpy(e->Name, sizeof(e->Name), t->Token[1]);
     Utf8ToUni(e->TitleEnglish, sizeof(e->TitleEnglish), t->Token[2], StrLen(t->Token[2]));
     Utf8ToUni(e->TitleLocal, sizeof(e->TitleLocal), t->Token[3], StrLen(t->Token[3]));

     UniReplaceStrEx(e->TitleEnglish, sizeof(e->TitleEnglish), e->TitleEnglish,
      L"_", L" ", 1);

     UniReplaceStrEx(e->TitleLocal, sizeof(e->TitleLocal), e->TitleLocal,
      L"_", L" ", 1);

     e->LcidList = NewIntList(0);

     t2 = ParseToken(t->Token[4], ",");
     if (t2 != ((void*)0))
     {
      UINT i;

      for (i = 0;i < t2->NumTokens;i++)
      {
       UINT id = ToInt(t2->Token[i]);

       AddIntDistinct(e->LcidList, id);
      }

      FreeToken(t2);
     }

     e->LangList = NewListFast(((void*)0));

     t2 = ParseToken(t->Token[5], ",");
     if (t2 != ((void*)0))
     {
      UINT i;

      for (i = 0;i < t2->NumTokens;i++)
      {
       Add(e->LangList, CopyStr(t2->Token[i]));
      }

      FreeToken(t2);
     }

     Add(o, e);
    }

    FreeToken(t);
   }
  }

  Free(line);
 }

 FreeBuf(b);

 return o;
}
