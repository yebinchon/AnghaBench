
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int full_path ;
typedef int exe_dir ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int Buffer; } ;
typedef int SERVER ;
typedef TYPE_1__ RPC_READ_LOG_FILE ;
typedef int IO ;


 int FILE_BEGIN ;
 int FTP_BLOCK_SIZE ;
 int FileClose (int *) ;
 int * FileOpenEx (char*,int,int) ;
 int FileRead (int *,void*,scalar_t__) ;
 int FileSeek (int *,int ,scalar_t__) ;
 scalar_t__ FileSize (int *) ;
 int Format (char*,int,char*,char*,char*) ;
 int Free (void*) ;
 int GetExeDir (char*,int) ;
 int MAX_PATH ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int NewBuf () ;
 int WriteBuf (int ,void*,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (scalar_t__) ;

void SiReadLocalLogFile(SERVER *s, char *filepath, UINT offset, RPC_READ_LOG_FILE *t)
{
 char exe_dir[MAX_PATH], full_path[MAX_PATH];
 IO *o;

 if (s == ((void*)0) || t == ((void*)0) || filepath == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_READ_LOG_FILE));

 GetExeDir(exe_dir, sizeof(exe_dir));
 Format(full_path, sizeof(full_path), "%s/%s", exe_dir, filepath);


 o = FileOpenEx(full_path, 0, 0);
 if (o != ((void*)0))
 {
  UINT filesize = FileSize(o);

  if (offset < filesize)
  {
   UINT readsize = MIN(filesize - offset, FTP_BLOCK_SIZE);
   void *buf = ZeroMalloc(readsize);

   FileSeek(o, FILE_BEGIN, offset);
   FileRead(o, buf, readsize);

   t->Buffer = NewBuf();
   WriteBuf(t->Buffer, buf, readsize);
   Free(buf);
  }

  FileClose(o);
 }
}
