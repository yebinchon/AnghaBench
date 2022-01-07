
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int t ;
typedef int filename ;
typedef int exe_dir ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {char* FileName; void* Buffer; scalar_t__ Size; scalar_t__ LastAccess; int SizeCompressed; int Offset; } ;
typedef TYPE_1__ HC ;
typedef int BUF ;


 int FileRead (int ,void*,int ) ;
 int FileSeek (int ,int ,int ) ;
 int Free (void*) ;
 int GetExeDirW (int *,int) ;
 scalar_t__ HAMCORE_CACHE_EXPIRES ;
 int HAMCORE_DIR_NAME ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 void* Malloc (int ) ;
 scalar_t__ MayaquaIsMinimalMode () ;
 int * NewBuf () ;
 int * ReadDumpW (int *) ;
 int ReplaceStrEx (char*,int,char*,char*,char*,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int SeekBuf (int *,int ,int ) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 scalar_t__ Tick64 () ;
 scalar_t__ Uncompress (void*,scalar_t__,void*,int ) ;
 int UniFormat (int *,int,char*,int *,int ,char*) ;
 int UnlockList (int ) ;
 int WriteBuf (int *,void*,scalar_t__) ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (scalar_t__) ;
 int hamcore ;
 int hamcore_io ;

BUF *ReadHamcore(char *name)
{
 wchar_t tmp[MAX_SIZE];
 wchar_t exe_dir[MAX_SIZE];
 BUF *b;
 char filename[MAX_PATH];

 if (name == ((void*)0))
 {
  return ((void*)0);
 }

 if (name[0] == '|')
 {
  name++;
 }

 if (name[0] == '/' || name[0] == '\\')
 {
  name++;
 }

 StrCpy(filename, sizeof(filename), name);

 ReplaceStrEx(filename, sizeof(filename), filename, "/", "\\", 1);

 if (MayaquaIsMinimalMode())
 {
  return ((void*)0);
 }


 GetExeDirW(exe_dir, sizeof(exe_dir));

 UniFormat(tmp, sizeof(tmp), L"%s/%S/%S", exe_dir, HAMCORE_DIR_NAME, filename);

 b = ReadDumpW(tmp);
 if (b != ((void*)0))
 {
  return b;
 }


 LockList(hamcore);
 {
  HC t, *c;
  UINT i;

  Zero(&t, sizeof(t));
  t.FileName = filename;
  c = Search(hamcore, &t);

  if (c == ((void*)0))
  {

   b = ((void*)0);
  }
  else
  {

   if (c->Buffer != ((void*)0))
   {

    b = NewBuf();
    WriteBuf(b, c->Buffer, c->Size);
    SeekBuf(b, 0, 0);
    c->LastAccess = Tick64();
   }
   else
   {

    if (FileSeek(hamcore_io, 0, c->Offset) == 0)
    {

     b = ((void*)0);
    }
    else
    {

     void *data = Malloc(c->SizeCompressed);
     if (FileRead(hamcore_io, data, c->SizeCompressed) == 0)
     {

      Free(data);
      b = ((void*)0);
     }
     else
     {

      c->Buffer = ZeroMalloc(c->Size);
      if (Uncompress(c->Buffer, c->Size, data, c->SizeCompressed) != c->Size)
      {

       Free(data);
       Free(c->Buffer);
       b = ((void*)0);
      }
      else
      {

       Free(data);
       b = NewBuf();
       WriteBuf(b, c->Buffer, c->Size);
       SeekBuf(b, 0, 0);
       c->LastAccess = Tick64();
      }
     }
    }
   }
  }


  for (i = 0;i < LIST_NUM(hamcore);i++)
  {
   HC *c = LIST_DATA(hamcore, i);

   if (c->Buffer != ((void*)0))
   {
    if (((c->LastAccess + HAMCORE_CACHE_EXPIRES) <= Tick64()) ||
     (StartWith(c->FileName, "Li")))
    {
     Free(c->Buffer);
     c->Buffer = ((void*)0);
    }
   }
  }
 }
 UnlockList(hamcore);

 return b;
}
