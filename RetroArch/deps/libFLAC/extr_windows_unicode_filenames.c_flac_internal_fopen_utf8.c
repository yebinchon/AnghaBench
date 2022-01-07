
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 int * _wfopen (int *,int *) ;
 int * fopen (char const*,char const*) ;
 int free (int *) ;
 int utf8_filenames ;
 int * wchar_from_utf8 (char const*) ;

FILE* flac_internal_fopen_utf8(const char *filename, const char *mode)
{
 if (!utf8_filenames) {
  return fopen(filename, mode);
 } else {
  wchar_t *wname = ((void*)0);
  wchar_t *wmode = ((void*)0);
  FILE *f = ((void*)0);

  do {
   if (!(wname = wchar_from_utf8(filename))) break;
   if (!(wmode = wchar_from_utf8(mode))) break;
   f = _wfopen(wname, wmode);
  } while(0);

  free(wname);
  free(wmode);

  return f;
 }
}
