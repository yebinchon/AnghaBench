
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int OsType; } ;
struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int LashHash; } ;
typedef int IO ;
typedef int FOLDER ;
typedef TYPE_1__ CFG_RW ;
typedef TYPE_2__ BUF ;


 TYPE_2__* CfgFolderToBuf (int *,int) ;
 scalar_t__ Cmp (int *,int ,int) ;
 int Copy (int ,int *,int) ;
 int FileClose (int *) ;
 int FileCopyExWithEofW (int *,int *,int) ;
 int * FileCreateW (int *) ;
 int FileDeleteW (int *) ;
 int FileRenameW (int *,int *) ;
 int FileWrite (int *,int ,int ) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_3__* GetOsInfo () ;
 int MAX_SIZE ;
 scalar_t__ OS_IS_UNIX (int ) ;
 int SHA1_SIZE ;
 int Sha0 (int *,int ,int ) ;
 int UniFormat (int *,int,char*,int *) ;
 int Zero (int ,int) ;

bool CfgSaveExW3(CFG_RW *rw, FOLDER *f, wchar_t *name, UINT *written_size, bool write_binary)
{
 wchar_t tmp[MAX_SIZE];
 bool text = !write_binary;
 UCHAR hash[SHA1_SIZE];
 BUF *b;
 IO *o;
 bool ret = 1;
 UINT dummy_int = 0;

 if (name == ((void*)0) || f == ((void*)0))
 {
  return 0;
 }
 if (written_size == ((void*)0))
 {
  written_size = &dummy_int;
 }


 b = CfgFolderToBuf(f, text);
 if (b == ((void*)0))
 {
  return 0;
 }

 Sha0(hash, b->Buf, b->Size);


 if (rw != ((void*)0))
 {
  if (Cmp(hash, rw->LashHash, SHA1_SIZE) == 0)
  {

   ret = 0;
  }
  else
  {
   Copy(rw->LashHash, hash, SHA1_SIZE);
  }
 }

 if (ret || OS_IS_UNIX(GetOsInfo()->OsType))
 {

  UniFormat(tmp, sizeof(tmp), L"%s.log", name);


  FileCopyExWithEofW(name, tmp, 1);


  o = FileCreateW(name);
  if (o != ((void*)0))
  {
   if (FileWrite(o, b->Buf, b->Size) == 0)
   {

    FileClose(o);
    FileDeleteW(name);
    FileRenameW(tmp, name);

    if (rw != ((void*)0))
    {
     Zero(rw->LashHash, sizeof(rw->LashHash));
    }
   }
   else
   {

    FileClose(o);


    FileDeleteW(tmp);
   }
  }
  else
  {

   FileRenameW(tmp, name);

   if (rw != ((void*)0))
   {
    Zero(rw->LashHash, sizeof(rw->LashHash));
   }
  }
 }

 *written_size = b->Size;


 FreeBuf(b);

 return ret;
}
