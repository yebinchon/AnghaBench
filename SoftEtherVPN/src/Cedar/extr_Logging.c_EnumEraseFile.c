
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef size_t UINT ;
struct TYPE_10__ {int Folder; int UpdateDate; int FileName; } ;
struct TYPE_9__ {size_t NumFiles; TYPE_3__** File; } ;
struct TYPE_8__ {int UpdateTime; int FullPath; } ;
typedef int LIST ;
typedef TYPE_1__ ERASE_FILE ;
typedef TYPE_2__ DIRLIST ;
typedef TYPE_3__ DIRENT ;


 int Add (int *,TYPE_1__*) ;
 int CopyStr (char*) ;
 scalar_t__ EndWith (char*,char*) ;
 TYPE_2__* EnumDir (char*) ;
 int Format (char*,int,char*,char*,int ) ;
 int FreeDir (TYPE_2__*) ;
 int MAX_PATH ;
 int NormalizePath (char*,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

void EnumEraseFile(LIST *o, char *dirname)
{
 DIRLIST *dir;
 UINT i;
 char tmp[MAX_PATH];

 if (o == ((void*)0) || dirname == ((void*)0))
 {
  return;
 }


 dir = EnumDir(dirname);

 for (i = 0;i < dir->NumFiles;i++)
 {
  DIRENT *e = dir->File[i];
  Format(tmp, sizeof(tmp), "%s/%s", dirname, e->FileName);
  NormalizePath(tmp, sizeof(tmp), tmp);

  if (e->Folder == 0)
  {

   ERASE_FILE *f;

   if (EndWith(tmp, ".log") || EndWith(tmp, ".config") || EndWith(tmp, ".old"))
   {

    f = ZeroMalloc(sizeof(ERASE_FILE));
    f->FullPath = CopyStr(tmp);
    f->UpdateTime = e->UpdateDate;

    Add(o, f);
   }
  }
  else
  {

   EnumEraseFile(o, tmp);
  }
 }

 FreeDir(dir);
}
