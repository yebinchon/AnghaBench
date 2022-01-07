
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ st_mtime; } ;
typedef TYPE_1__ struct_stat ;
typedef int curl_off_t ;
struct TYPE_6__ {scalar_t__ dwHighDateTime; scalar_t__ dwLowDateTime; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_2__ FILETIME ;
typedef int FILE ;


 int CURL_OFF_T_C (int) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int,int *,int ,int ,int *) ;
 scalar_t__ ENOENT ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 int FILE_READ_ATTRIBUTES ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 scalar_t__ GetFileTime (scalar_t__,int *,int *,TYPE_2__*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 scalar_t__ errno ;
 int fprintf (int *,char*,...) ;
 int stat (char const*,TYPE_1__*) ;
 char* strerror (scalar_t__) ;

curl_off_t getfiletime(const char *filename, FILE *error_stream)
{
  curl_off_t result = -1;
  struct_stat statbuf;
  if(-1 != stat(filename, &statbuf)) {
    result = (curl_off_t)statbuf.st_mtime;
  }
  else if(errno != ENOENT) {
    fprintf(error_stream,
            "Failed to get filetime: %s\n", strerror(errno));
  }

  return result;
}
