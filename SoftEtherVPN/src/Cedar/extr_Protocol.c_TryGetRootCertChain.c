
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int hex_a ;
typedef int hex ;
typedef int fn ;
typedef int exedir ;
typedef int dirname ;
struct TYPE_17__ {scalar_t__ root_cert; int subject_name; } ;
typedef TYPE_1__ X ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_19__ {int Folder; char* FileNameW; } ;
struct TYPE_18__ {size_t NumFiles; TYPE_3__** File; } ;
typedef int LIST ;
typedef TYPE_2__ DIRLIST ;
typedef TYPE_3__ DIRENT ;
typedef int BUF ;


 int AUTO_DOWNLOAD_CERTS_PREFIX ;
 int AddAllChainCertsToCertList (int *) ;
 int BinToStr (char*,int,int *,int) ;
 TYPE_1__* CloneX (TYPE_1__*) ;
 int CombinePathW (char*,int,char*,char*) ;
 int CompareX (TYPE_1__*,TYPE_1__*) ;
 int Debug (char*,size_t,char*) ;
 int DumpBufW (int *,char*) ;
 TYPE_2__* EnumDirW (char*) ;
 int FileDeleteW (char*) ;
 int FreeBuf (int *) ;
 int FreeCertList (int *) ;
 int FreeDir (TYPE_2__*) ;
 int GetAllNameFromName (char*,int,int ) ;
 int GetExeDirW (char*,int) ;
 int GetXDigest (TYPE_1__*,int *,int) ;
 int IsXInCertList (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,size_t) ;
 size_t LIST_NUM (int *) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 int MakeDirExW (char*) ;
 int * NewCertList (int) ;
 int SHA1_SIZE ;
 int StrToUni (char*,int,char*) ;
 int TryGetParentCertFromCertList (int *,TYPE_1__*,int *) ;
 scalar_t__ UniStartWith (char*,int ) ;
 int UniStrCat (char*,int,char*) ;
 int UniStrCpy (char*,int,int ) ;
 int * XToBuf (TYPE_1__*,int) ;

bool TryGetRootCertChain(LIST *o, X *x, bool auto_save, X **found_root_x)
{
 bool ret = 0;
 LIST *chain = ((void*)0);
 LIST *current_chain_dir = ((void*)0);

 if (o == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 chain = NewCertList(0);

 ret = TryGetParentCertFromCertList(o, x, chain);

 if (ret)
 {
  UINT i;
  DIRLIST *dir;
  wchar_t dirname[MAX_SIZE];
  wchar_t exedir[MAX_SIZE];

  GetExeDirW(exedir, sizeof(exedir));
  CombinePathW(dirname, sizeof(dirname), exedir, L"chain_certs");
  MakeDirExW(dirname);

  if (auto_save)
  {

   dir = EnumDirW(dirname);
   if (dir != ((void*)0))
   {
    for (i = 0;i < dir->NumFiles;i++)
    {
     DIRENT *e = dir->File[i];

     if (e->Folder == 0)
     {
      if (UniStartWith(e->FileNameW, AUTO_DOWNLOAD_CERTS_PREFIX))
      {
       wchar_t tmp[MAX_SIZE];

       CombinePathW(tmp, sizeof(tmp), dirname, e->FileNameW);

       FileDeleteW(tmp);
      }
     }
    }

    FreeDir(dir);
   }
  }

  current_chain_dir = NewCertList(0);
  AddAllChainCertsToCertList(current_chain_dir);

  for (i = 0;i < LIST_NUM(chain);i++)
  {
   wchar_t tmp[MAX_SIZE];
   X *xx = LIST_DATA(chain, i);

   GetAllNameFromName(tmp, sizeof(tmp), xx->subject_name);

   Debug("depth = %u, subject = %S\n", i, tmp);

   if (auto_save && CompareX(x, xx) == 0 && IsXInCertList(current_chain_dir, xx) == 0)
   {
    wchar_t fn[MAX_PATH];
    char hex_a[128];
    wchar_t hex[128];
    UCHAR hash[SHA1_SIZE];
    wchar_t tmp[MAX_SIZE];
    BUF *b;

    GetXDigest(xx, hash, 1);
    BinToStr(hex_a, sizeof(hex_a), hash, SHA1_SIZE);
    StrToUni(hex, sizeof(hex), hex_a);

    UniStrCpy(fn, sizeof(fn), AUTO_DOWNLOAD_CERTS_PREFIX);
    UniStrCat(fn, sizeof(fn), hex);
    UniStrCat(fn, sizeof(fn), L".cer");

    CombinePathW(tmp, sizeof(tmp), dirname, fn);

    b = XToBuf(xx, 1);

    DumpBufW(b, tmp);

    FreeBuf(b);
   }

   if (xx->root_cert)
   {
    if (found_root_x != ((void*)0))
    {
     *found_root_x = CloneX(xx);
    }
   }
  }
 }

 FreeCertList(chain);

 FreeCertList(current_chain_dir);

 return ret;
}
