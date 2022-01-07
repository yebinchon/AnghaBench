
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int newfile ;
typedef int header ;
typedef int hash1 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int Size; scalar_t__ Buf; } ;
typedef int IO ;
typedef int FOLDER ;
typedef TYPE_1__ BUF ;


 int * CfgBufBinToFolder (TYPE_1__*) ;
 int * CfgBufTextToFolder (TYPE_1__*) ;
 scalar_t__ Cmp (int *,int *,int) ;
 int FILE_BEGIN ;
 int FileClose (int *) ;
 int FileDeleteW (int *) ;
 int * FileOpenW (int *,int) ;
 scalar_t__ FileRead (int *,void*,int) ;
 scalar_t__ FileSeek (int *,int ,int) ;
 scalar_t__ FileSize (int *) ;
 int Free (void*) ;
 int FreeBuf (TYPE_1__*) ;
 int MAX_SIZE ;
 void* Malloc (int) ;
 TYPE_1__* NewBuf () ;
 int ReadBuf (TYPE_1__*,int *,int) ;
 int SHA1_SIZE ;
 int SeekBuf (TYPE_1__*,int,int ) ;
 int Sha0 (int *,int *,int) ;
 int * TAG_BINARY ;
 int UniFormat (int *,int,char*,int *) ;
 int WriteBuf (TYPE_1__*,void*,int) ;

FOLDER *CfgReadW(wchar_t *name)
{
 wchar_t tmp[MAX_SIZE];
 wchar_t newfile[MAX_SIZE];
 BUF *b;
 IO *o;
 UINT size;
 void *buf;
 FOLDER *f;
 bool delete_new = 0;
 bool binary_file = 0;
 UCHAR header[8];
 bool has_eof = 0;

 if (name == ((void*)0))
 {
  return ((void*)0);
 }


 UniFormat(newfile, sizeof(newfile), L"%s.new", name);

 UniFormat(tmp, sizeof(tmp), L"%s.log", name);


 o = FileOpenW(newfile, 0);
 if (o == ((void*)0))
 {
  UINT size;

  o = FileOpenW(tmp, 0);

  if (o != ((void*)0))
  {

   size = FileSize(o);
   if (size >= 2)
   {
    char c;

    if (FileSeek(o, FILE_BEGIN, size - 1) && FileRead(o, &c, 1) && c == 0x1A && FileSeek(o, FILE_BEGIN, 0))
    {

     has_eof = 1;
    }
    else
    {

     FileClose(o);
     o = ((void*)0);
    }
   }
  }
 }
 else
 {
  delete_new = 1;
 }
 if (o == ((void*)0))
 {

  o = FileOpenW(name, 0);
 }
 else
 {

  if (FileSize(o) == 0)
  {
   FileClose(o);
   o = FileOpenW(name, 0);
  }
 }
 if (o == ((void*)0))
 {

  return ((void*)0);
 }


 size = FileSize(o);
 if (has_eof)
 {

  size -= 1;
 }
 buf = Malloc(size);
 FileRead(o, buf, size);
 b = NewBuf();
 WriteBuf(b, buf, size);
 SeekBuf(b, 0, 0);


 FileClose(o);

 if (delete_new)
 {

  FileDeleteW(newfile);
 }


 ReadBuf(b, header, sizeof(header));
 if (Cmp(header, TAG_BINARY, 8) == 0)
 {
  UCHAR hash1[SHA1_SIZE], hash2[SHA1_SIZE];
  binary_file = 1;


  ReadBuf(b, hash1, sizeof(hash1));

  Sha0(hash2, ((UCHAR *)b->Buf) + 8 + SHA1_SIZE, b->Size - 8 - SHA1_SIZE);

  if (Cmp(hash1, hash2, SHA1_SIZE) != 0)
  {

   FreeBuf(b);
   return ((void*)0);
  }
 }

 SeekBuf(b, 0, 0);

 if (binary_file)
 {
  SeekBuf(b, 8 + SHA1_SIZE, 0);
 }


 if (binary_file == 0)
 {

  f = CfgBufTextToFolder(b);
 }
 else
 {

  f = CfgBufBinToFolder(b);
 }


 Free(buf);
 FreeBuf(b);

 FileDeleteW(newfile);

 return f;
}
