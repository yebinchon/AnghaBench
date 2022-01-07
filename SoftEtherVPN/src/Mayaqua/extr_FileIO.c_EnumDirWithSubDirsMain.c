
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef size_t UINT ;
struct TYPE_9__ {int Folder; int FileNameW; } ;
struct TYPE_8__ {size_t NumFiles; TYPE_3__** File; } ;
struct TYPE_7__ {int FileList; } ;
typedef TYPE_1__ ENUM_DIR_WITH_SUB_DATA ;
typedef TYPE_2__ DIRLIST ;
typedef TYPE_3__ DIRENT ;


 int Add (int ,int ) ;
 int ConbinePathW (int *,int,int *,int ) ;
 int CopyUniStr (int *) ;
 TYPE_2__* EnumDirExW (int *,int *) ;
 int FreeDir (TYPE_2__*) ;
 int MAX_SIZE ;

void EnumDirWithSubDirsMain(ENUM_DIR_WITH_SUB_DATA *d, wchar_t *dirname)
{
 DIRLIST *dir;
 UINT i;

 if (d == ((void*)0) || dirname == ((void*)0))
 {
  return;
 }

 dir = EnumDirExW(dirname, ((void*)0));
 if (dir == ((void*)0))
 {
  return;
 }


 for (i = 0;i < dir->NumFiles;i++)
 {
  DIRENT *e = dir->File[i];

  if (e->Folder == 0)
  {
   wchar_t tmp[MAX_SIZE];

   ConbinePathW(tmp, sizeof(tmp), dirname, e->FileNameW);

   Add(d->FileList, CopyUniStr(tmp));
  }
 }


 for (i = 0;i < dir->NumFiles;i++)
 {
  DIRENT *e = dir->File[i];

  if (e->Folder)
  {
   wchar_t tmp[MAX_SIZE];

   ConbinePathW(tmp, sizeof(tmp), dirname, e->FileNameW);

   EnumDirWithSubDirsMain(d, tmp);
  }
 }

 FreeDir(dir);
}
