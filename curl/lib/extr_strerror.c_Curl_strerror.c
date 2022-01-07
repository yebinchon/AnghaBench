
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int wbuf ;
typedef int buffer ;
typedef scalar_t__ DWORD ;


 int DEBUGASSERT (int) ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,int,int ,int*,int,int *) ;
 int FormatMessageA (int,int *,int,int ,char*,scalar_t__,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_NEUTRAL ;
 scalar_t__ OK ;
 int SetLastError (scalar_t__) ;
 int errno ;
 int get_winsock_error (int,char*,size_t) ;
 int msnprintf (char*,size_t,char*,int,...) ;
 char* strerror (int) ;
 scalar_t__ strerror_r (int,char*,...) ;
 int strncpy (char*,char*,size_t) ;
 char* strrchr (char*,char) ;
 int sys_nerr ;
 int wcstombs (char*,int*,size_t) ;

const char *Curl_strerror(int err, char *buf, size_t buflen)
{



  int old_errno = errno;
  char *p;
  size_t max;

  DEBUGASSERT(err >= 0);

  max = buflen - 1;
  *buf = '\0';
  {
    char *msg = strerror(err);
    if(msg)
      strncpy(buf, msg, max);
    else
      msnprintf(buf, max, "Unknown error %d", err);
  }




  buf[max] = '\0';


  p = strrchr(buf, '\n');
  if(p && (p - buf) >= 2)
    *p = '\0';
  p = strrchr(buf, '\r');
  if(p && (p - buf) >= 1)
    *p = '\0';

  if(errno != old_errno)
    errno = old_errno;






  return buf;
}
