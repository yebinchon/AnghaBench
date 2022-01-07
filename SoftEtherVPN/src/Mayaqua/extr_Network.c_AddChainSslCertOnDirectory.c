
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int txtname ;
typedef int tmp ;
struct ssl_ctx_st {int dummy; } ;
typedef int exedir ;
typedef int dirname ;
typedef int X ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Folder; char* FileNameW; } ;
struct TYPE_5__ {size_t NumFiles; TYPE_2__** File; } ;
typedef int LIST ;
typedef TYPE_1__ DIRLIST ;
typedef TYPE_2__ DIRENT ;


 int Add (int *,int ) ;
 int AddChainSslCert (struct ssl_ctx_st*,int *) ;
 int Clone (int *,int) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int CombinePathW (int *,int,int *,char*) ;
 TYPE_1__* EnumDirW (int *) ;
 int FileCopyW (char*,int *) ;
 int * FileToXW (int *) ;
 int Free (int *) ;
 int FreeDir (TYPE_1__*) ;
 int FreeX (int *) ;
 int GetExeDirW (int *,int) ;
 int GetXDigest (int *,int *,int) ;
 int IsFileExistsW (int *) ;
 int * LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int MAX_SIZE ;
 int MakeDirExW (int *) ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 int SHA1_SIZE ;

void AddChainSslCertOnDirectory(struct ssl_ctx_st *ctx)
{
 wchar_t dirname[MAX_SIZE];
 wchar_t exedir[MAX_SIZE];
 wchar_t txtname[MAX_SIZE];
 DIRLIST *dir;
 LIST *o;
 UINT i;


 if (ctx == ((void*)0))
 {
  return;
 }

 o = NewListFast(((void*)0));

 GetExeDirW(exedir, sizeof(exedir));

 CombinePathW(dirname, sizeof(dirname), exedir, L"chain_certs");

 MakeDirExW(dirname);

 CombinePathW(txtname, sizeof(txtname), dirname, L"Readme_Chain_Certs.txt");

 if (IsFileExistsW(txtname) == 0)
 {
  FileCopyW(L"|chain_certs.txt", txtname);
 }

 dir = EnumDirW(dirname);

 if (dir != ((void*)0))
 {
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
     UINT j;
     bool exists = 0;
     UCHAR hash[SHA1_SIZE];

     GetXDigest(x, hash, 1);

     for (j = 0;j < LIST_NUM(o);j++)
     {
      UCHAR *hash2 = LIST_DATA(o, j);

      if (Cmp(hash, hash2, SHA1_SIZE) == 0)
      {
       exists = 1;
      }
     }

     if (exists == 0)
     {
      AddChainSslCert(ctx, x);

      Add(o, Clone(hash, SHA1_SIZE));
     }

     FreeX(x);
    }
   }
  }

  FreeDir(dir);
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  UCHAR *hash = LIST_DATA(o, i);

  Free(hash);
 }

 ReleaseList(o);
}
