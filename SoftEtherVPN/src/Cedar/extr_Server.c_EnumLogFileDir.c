
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int full_path ;
typedef int file_path ;
typedef int exe_dir ;
typedef int dir_full_path ;
typedef size_t UINT ;
struct TYPE_10__ {int Folder; scalar_t__ FileSize; char* FileName; int UpdateDate; } ;
struct TYPE_9__ {size_t NumFiles; TYPE_3__** File; } ;
struct TYPE_8__ {size_t FileSize; int ServerName; int UpdatedTime; int Path; } ;
typedef TYPE_1__ LOG_FILE ;
typedef int LIST ;
typedef TYPE_2__ DIRLIST ;
typedef TYPE_3__ DIRENT ;


 scalar_t__ EndWith (char*,char*) ;
 TYPE_2__* EnumDir (char*) ;
 int Format (char*,int,char*,char*,char*) ;
 int FreeDir (TYPE_2__*) ;
 int GetExeDir (char*,int) ;
 int GetMachineName (int ,int) ;
 int Insert (int *,TYPE_1__*) ;
 int MAX_PATH ;
 scalar_t__ MIN (scalar_t__,int) ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

void EnumLogFileDir(LIST *o, char *dirname)
{
 UINT i;
 char exe_dir[MAX_PATH];
 char dir_full_path[MAX_PATH];
 DIRLIST *dir;

 if (o == ((void*)0) || dirname == ((void*)0))
 {
  return;
 }

 GetExeDir(exe_dir, sizeof(exe_dir));
 Format(dir_full_path, sizeof(dir_full_path), "%s/%s", exe_dir, dirname);

 dir = EnumDir(dir_full_path);
 if (dir == ((void*)0))
 {
  return;
 }

 for (i = 0;i < dir->NumFiles;i++)
 {
  DIRENT *e = dir->File[i];

  if (e->Folder == 0 && e->FileSize > 0)
  {
   char full_path[MAX_PATH];
   char file_path[MAX_PATH];

   Format(file_path, sizeof(file_path), "%s/%s", dirname, e->FileName);
   Format(full_path, sizeof(full_path), "%s/%s", exe_dir, file_path);

   if (EndWith(file_path, ".log"))
   {
    LOG_FILE *f = ZeroMalloc(sizeof(LOG_FILE));

    StrCpy(f->Path, sizeof(f->Path), file_path);
    f->FileSize = (UINT)(MIN(e->FileSize, 0xffffffffUL));
    f->UpdatedTime = e->UpdateDate;

    GetMachineName(f->ServerName, sizeof(f->ServerName));

    Insert(o, f);
   }
  }
 }

 FreeDir(dir);
}
