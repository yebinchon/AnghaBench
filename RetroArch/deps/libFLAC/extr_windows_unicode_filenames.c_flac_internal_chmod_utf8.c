
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _chmod (char const*,int) ;
 int _wchmod (int *,int) ;
 int free (int *) ;
 int utf8_filenames ;
 int * wchar_from_utf8 (char const*) ;

int flac_internal_chmod_utf8(const char *filename, int pmode)
{
 if (!utf8_filenames) {
  return _chmod(filename, pmode);
 } else {
  wchar_t *wname;
  int ret;

  if (!(wname = wchar_from_utf8(filename))) return -1;
  ret = _wchmod(wname, pmode);
  free(wname);

  return ret;
 }
}
