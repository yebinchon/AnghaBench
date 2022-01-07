
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct __stat64 {int dummy; } ;


 int _stat64 (char const*,struct __stat64*) ;
 int _wstat64 (int *,struct __stat64*) ;
 int free (int *) ;
 int utf8_filenames ;
 int * wchar_from_utf8 (char const*) ;

int flac_internal_stat64_utf8(const char *path, struct __stat64 *buffer)
{
 if (!utf8_filenames) {
  return _stat64(path, buffer);
 } else {
  wchar_t *wpath;
  int ret;

  if (!(wpath = wchar_from_utf8(path))) return -1;
  ret = _wstat64(wpath, buffer);
  free(wpath);

  return ret;
 }
}
