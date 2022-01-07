
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int size ;
typedef int fullpath ;
typedef int exedir ;
typedef int errorcode ;
struct TYPE_4__ {int InternetFile; int FileSize; int * io; int * hHttpFile; int * hInternet; } ;
typedef TYPE_1__ VI_FILE ;
typedef int UINT ;
typedef int IO ;
typedef int * HINTERNET ;
typedef int DWORD ;


 int ConbinePath (char*,int,char*,char*) ;
 int DEFAULT_USER_AGENT ;
 int * FileOpen (char*,int) ;
 int FileSize (int *) ;
 int FtpGetFileSize (int *,int *) ;
 int GetExeDir (char*,int) ;
 int HTTP_QUERY_CONTENT_LENGTH ;
 int HTTP_QUERY_FLAG_NUMBER ;
 int HTTP_QUERY_STATUS_CODE ;
 int HttpQueryInfo (int *,int,int*,int*,int *) ;
 int INTERNET_FLAG_NO_CACHE_WRITE ;
 int INTERNET_FLAG_RELOAD ;
 int INTERNET_OPEN_TYPE_PRECONFIG ;
 int InternetCloseHandle (int *) ;
 int * InternetOpenA (int ,int ,int *,int *,int ) ;
 int * InternetOpenUrlA (int *,char*,int *,int ,int,int ) ;
 int MAX_PATH ;
 scalar_t__ StartWith (char*,char*) ;
 scalar_t__ ViIsInternetFile (char*) ;
 TYPE_1__* ZeroMalloc (int) ;

VI_FILE *ViOpenFile(char *path)
{
 VI_FILE *f;

 if (path == ((void*)0))
 {
  return ((void*)0);
 }

 if (ViIsInternetFile(path))
 {
  HINTERNET hHttpFile;
  HINTERNET hInternet = InternetOpenA(DEFAULT_USER_AGENT,
   INTERNET_OPEN_TYPE_PRECONFIG,
   ((void*)0), ((void*)0), 0);
  UINT size;
  UINT sizesize;

  if (hInternet == ((void*)0))
  {
   return ((void*)0);
  }

  hHttpFile = InternetOpenUrlA(hInternet, path, ((void*)0), 0,
   INTERNET_FLAG_NO_CACHE_WRITE | INTERNET_FLAG_RELOAD, 0);

  if (hHttpFile == ((void*)0))
  {
   InternetCloseHandle(hInternet);
   return ((void*)0);
  }

  size = 0;
  sizesize = sizeof(size);

  if (StartWith(path, "ftp://"))
  {

   DWORD high = 0;

   size = FtpGetFileSize(hHttpFile, &high);
  }
  else
  {
   UINT errorcode = 0;
   UINT errorcode_size = sizeof(errorcode);


   if (HttpQueryInfo(hHttpFile, HTTP_QUERY_CONTENT_LENGTH | HTTP_QUERY_FLAG_NUMBER,
    &size, &sizesize, ((void*)0)) == 0)
   {
    size = 0;
   }

   if (HttpQueryInfo(hHttpFile, HTTP_QUERY_STATUS_CODE | HTTP_QUERY_FLAG_NUMBER,
    &errorcode, &errorcode_size, ((void*)0)) == 0 ||
    (errorcode / 100) != 2)
   {

    InternetCloseHandle(hInternet);
    InternetCloseHandle(hHttpFile);
    return ((void*)0);
   }
  }

  f = ZeroMalloc(sizeof(VI_FILE));
  f->InternetFile = 1;
  f->hInternet = hInternet;
  f->hHttpFile = hHttpFile;
  f->FileSize = size;

  return f;
 }
 else
 {
  IO *io;
  char fullpath[MAX_PATH];
  char exedir[MAX_PATH];

  GetExeDir(exedir, sizeof(exedir));

  ConbinePath(fullpath, sizeof(fullpath), exedir, path);

  io = FileOpen(fullpath, 0);
  if (io == ((void*)0))
  {
   return ((void*)0);
  }

  f = ZeroMalloc(sizeof(VI_FILE));
  f->InternetFile = 0;
  f->FileSize = FileSize(io);
  f->io = io;

  return f;
 }
}
