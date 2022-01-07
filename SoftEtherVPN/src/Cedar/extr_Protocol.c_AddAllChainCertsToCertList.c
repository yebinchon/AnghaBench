
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int exedir ;
typedef int dirname ;
typedef int X ;
typedef size_t UINT ;
struct TYPE_6__ {int Folder; char* FileNameW; } ;
struct TYPE_5__ {size_t NumFiles; TYPE_2__** File; } ;
typedef int LIST ;
typedef TYPE_1__ DIRLIST ;
typedef TYPE_2__ DIRENT ;


 int AddXToCertList (int *,int *) ;
 int CombinePathW (int *,int,int *,char*) ;
 TYPE_1__* EnumDirW (int *) ;
 int * FileToXW (int *) ;
 int FreeDir (TYPE_1__*) ;
 int FreeX (int *) ;
 int GetExeDirW (int *,int) ;
 int MAX_SIZE ;
 int MakeDirExW (int *) ;

void AddAllChainCertsToCertList(LIST *o)
{
 wchar_t dirname[MAX_SIZE];
 wchar_t exedir[MAX_SIZE];
 DIRLIST *dir;

 if (o == ((void*)0))
 {
  return;
 }

 GetExeDirW(exedir, sizeof(exedir));

 CombinePathW(dirname, sizeof(dirname), exedir, L"chain_certs");

 MakeDirExW(dirname);

 dir = EnumDirW(dirname);

 if (dir != ((void*)0))
 {
  UINT i;

  for (i = 0;i < dir->NumFiles;i++)
  {
   DIRENT *e = dir->File[i];

   if (e->Folder == 0)
   {
    wchar_t tmp[MAX_SIZE];
    X *x;

    CombinePathW(tmp, sizeof(tmp), dirname, e->FileNameW);

    x = FileToXW(tmp);

    if (x != ((void*)0))
    {
     AddXToCertList(o, x);

     FreeX(x);
    }
   }
  }

  FreeDir(dir);
 }
}
