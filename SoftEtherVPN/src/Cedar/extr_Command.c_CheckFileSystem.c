
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char wchar_t ;
typedef int filename ;
typedef int exe_dir ;
typedef int exe ;
typedef size_t UINT ;
typedef size_t UCHAR ;
struct TYPE_10__ {size_t Size; scalar_t__ Buf; } ;
struct TYPE_9__ {size_t NumFiles; TYPE_1__** File; } ;
struct TYPE_8__ {int FileName; } ;
typedef int IO ;
typedef TYPE_2__ DIRLIST ;
typedef TYPE_3__ BUF ;


 int CombinePathW (char*,int,int ,char*) ;
 scalar_t__ EndWith (char*,int ) ;
 TYPE_2__* EnumDir (char*) ;
 int FileClose (int *) ;
 int * FileCreateW (char*) ;
 int FileDeleteW (char*) ;
 int * FileOpenW (char*,int) ;
 int FileSize (int *) ;
 int FileWrite (int *,size_t*,size_t) ;
 int Free (size_t*) ;
 int FreeBuf (TYPE_3__*) ;
 int FreeDir (TYPE_2__*) ;
 int GetExeDir (char*,int) ;
 int GetExeName (char*,int) ;
 int MAX_PATH ;
 size_t* Malloc (size_t) ;
 int MsGetMyTempDirW () ;
 int Print (char*) ;
 TYPE_3__* ReadDumpW (char*) ;

bool CheckFileSystem()
{
 bool ok = 0;
 char exe[MAX_PATH];
 char exe_dir[MAX_PATH];
 DIRLIST *dirs;
 UINT i;

 GetExeName(exe, sizeof(exe));
 GetExeDir(exe_dir, sizeof(exe_dir));

 dirs = EnumDir(exe_dir);
 for (i = 0;i < dirs->NumFiles;i++)
 {
  if (EndWith(exe, dirs->File[i]->FileName))
  {
   ok = 1;
   break;
  }
 }
 FreeDir(dirs);

 if (ok == 0)
 {
  Print("EnumDir Failed.\n");
  return 0;
 }
 else
 {
  UINT size = 1234567;
  UCHAR *buf;
  IO *io;

  wchar_t *filename = L"/tmp/vpn_checker_tmp";





  buf = Malloc(size);
  for (i = 0;i < size;i++)
  {
   buf[i] = i % 256;
  }

  io = FileCreateW(filename);
  if (io == ((void*)0))
  {
   Print("FileCreate Failed.\n");
   Free(buf);
   return 0;
  }
  else
  {
   FileWrite(io, buf, size);
   Free(buf);
   FileClose(io);

   io = FileOpenW(filename, 0);
   if (FileSize(io) != 1234567)
   {
    Print("FileSize Failed.\n");
    FileClose(io);
    return 0;
   }
   else
   {
    BUF *b;

    FileClose(io);
    b = ReadDumpW(filename);
    if(b == ((void*)0))
    {
     return 0;
    }

    for (i = 0;i < b->Size;i++)
    {
     UCHAR c = ((UCHAR *)b->Buf)[i];

     if (c != (i % 256))
     {
      Print("FileToBuf Failed.\n");
      FreeBuf(b);
      return 0;
     }
    }

    FreeBuf(b);
   }
  }

  FileDeleteW(filename);
 }

 return ok;
}
