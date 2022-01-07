
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct utimbuf {int modtime; int actime; } ;
struct __utimbuf64 {int modtime; int actime; } ;


 int _wutime64 (int *,struct __utimbuf64*) ;
 int free (int *) ;
 int utf8_filenames ;
 int utime (char const*,struct utimbuf*) ;
 int * wchar_from_utf8 (char const*) ;

int flac_internal_utime_utf8(const char *filename, struct utimbuf *times)
{
 if (!utf8_filenames) {
  return utime(filename, times);
 } else {
  wchar_t *wname;
  struct __utimbuf64 ut;
  int ret;

  if (!(wname = wchar_from_utf8(filename))) return -1;
  ut.actime = times->actime;
  ut.modtime = times->modtime;
  ret = _wutime64(wname, &ut);
  free(wname);

  return ret;
 }
}
