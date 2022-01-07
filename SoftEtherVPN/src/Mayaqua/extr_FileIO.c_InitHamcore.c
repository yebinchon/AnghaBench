
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp2 ;
typedef int tmp ;
typedef int str_size ;
typedef int num ;
typedef int header ;
typedef int exe_dir ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {char Size; char SizeCompressed; char Offset; int FileName; } ;
typedef TYPE_1__ HC ;


 scalar_t__ Cmp (char*,int ,int) ;
 int CompareHamcore ;
 int CopyStr (char*) ;
 scalar_t__ Endian32 (scalar_t__) ;
 int FileClose (int *) ;
 int * FileOpenW (int *,int) ;
 int FileRead (int *,...) ;
 int FileReplaceRenameW (int *,int *) ;
 int GetExeDirW (int *,int) ;
 int HAMCORE_FILE_NAME ;
 int HAMCORE_FILE_NAME_2 ;
 int HAMCORE_HEADER_DATA ;
 int HAMCORE_HEADER_SIZE ;
 int Insert (int ,TYPE_1__*) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 scalar_t__ MayaquaIsMinimalMode () ;
 int MsGetSystem32Dir () ;
 int NewList (int ) ;
 int UniFormat (int *,int,char*,int ,...) ;
 int Zero (char*,int) ;
 TYPE_1__* ZeroMalloc (int) ;
 int hamcore ;
 int * hamcore_io ;

void InitHamcore()
{
 wchar_t tmp[MAX_PATH];
 wchar_t tmp2[MAX_PATH];
 wchar_t exe_dir[MAX_PATH];
 UINT i, num;
 char header[HAMCORE_HEADER_SIZE];

 hamcore = NewList(CompareHamcore);

 if (MayaquaIsMinimalMode())
 {
  return;
 }

 GetExeDirW(exe_dir, sizeof(exe_dir));
 UniFormat(tmp, sizeof(tmp), L"%s/%S", exe_dir, HAMCORE_FILE_NAME);

 UniFormat(tmp2, sizeof(tmp2), L"%s/%S", exe_dir, HAMCORE_FILE_NAME_2);


 FileReplaceRenameW(tmp2, tmp);


 hamcore_io = FileOpenW(tmp, 0);
 if (hamcore_io == ((void*)0))
 {




  UniFormat(tmp, sizeof(tmp), L"/bin/%S", HAMCORE_FILE_NAME);


  hamcore_io = FileOpenW(tmp, 0);
  if (hamcore_io == ((void*)0))
  {
   return;
  }
 }


 Zero(header, sizeof(header));
 FileRead(hamcore_io, header, HAMCORE_HEADER_SIZE);

 if (Cmp(header, HAMCORE_HEADER_DATA, HAMCORE_HEADER_SIZE) != 0)
 {

  FileClose(hamcore_io);
  hamcore_io = ((void*)0);
  return;
 }


 num = 0;
 FileRead(hamcore_io, &num, sizeof(num));
 num = Endian32(num);
 for (i = 0;i < num;i++)
 {

  char tmp[MAX_SIZE];
  UINT str_size = 0;
  HC *c;

  FileRead(hamcore_io, &str_size, sizeof(str_size));
  str_size = Endian32(str_size);
  if (str_size >= 1)
  {
   str_size--;
  }

  Zero(tmp, sizeof(tmp));
  FileRead(hamcore_io, tmp, str_size);

  c = ZeroMalloc(sizeof(HC));
  c->FileName = CopyStr(tmp);

  FileRead(hamcore_io, &c->Size, sizeof(UINT));
  c->Size = Endian32(c->Size);

  FileRead(hamcore_io, &c->SizeCompressed, sizeof(UINT));
  c->SizeCompressed = Endian32(c->SizeCompressed);

  FileRead(hamcore_io, &c->Offset, sizeof(UINT));
  c->Offset = Endian32(c->Offset);

  Insert(hamcore, c);
 }
}
