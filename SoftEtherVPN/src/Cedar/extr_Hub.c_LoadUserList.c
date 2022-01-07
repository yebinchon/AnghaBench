
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int UserHashList; int Filename; } ;
typedef TYPE_1__ USERLIST ;
typedef int UINT64 ;
typedef int LIST ;
typedef int BUF ;


 int ACCESS_LIST_INCLUDE_FILE_MAX_SIZE ;
 int Add (int *,TYPE_1__*) ;
 int AddInt64Distinct (int ,int ) ;
 char* CfgReadNextLine (int *) ;
 int Delete (int *,TYPE_1__*) ;
 TYPE_1__* FindUserList (int *,char*) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeUserListEntry (TYPE_1__*) ;
 int IsEmptyStr (char*) ;
 int NewInt64List (int) ;
 int * ReadDumpWithMaxSize (char*,int ) ;
 int StartWith (char*,char*) ;
 int StrCpy (int ,int,char*) ;
 int Trim (char*) ;
 int UsernameToInt64 (char*) ;
 TYPE_1__* ZeroMalloc (int) ;

USERLIST *LoadUserList(LIST *o, char *filename)
{
 USERLIST *u;
 BUF *b;

 if (o == ((void*)0) || filename == ((void*)0))
 {
  return ((void*)0);
 }

 u = FindUserList(o, filename);

 if (u != ((void*)0))
 {
  Delete(o, u);

  FreeUserListEntry(u);
 }

 u = ZeroMalloc(sizeof(USERLIST));

 StrCpy(u->Filename, sizeof(u->Filename), filename);

 u->UserHashList = NewInt64List(0);

 b = ReadDumpWithMaxSize(filename, ACCESS_LIST_INCLUDE_FILE_MAX_SIZE);
 if (b != ((void*)0))
 {
  while (1)
  {
   char *line = CfgReadNextLine(b);
   UINT64 ui;
   if (line == ((void*)0))
   {
    break;
   }

   Trim(line);

   if (IsEmptyStr(line) == 0)
   {
    if (StartWith(line, "#") == 0 &&
     StartWith(line, "//") == 0 &&
     StartWith(line, ";") == 0)
    {
     ui = UsernameToInt64(line);

     AddInt64Distinct(u->UserHashList, ui);
    }
   }

   Free(line);
  }

  FreeBuf(b);
 }

 Add(o, u);

 return u;
}
