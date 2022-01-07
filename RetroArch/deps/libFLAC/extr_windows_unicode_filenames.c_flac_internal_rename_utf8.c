
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _wrename (int *,int *) ;
 int free (int *) ;
 int rename (char const*,char const*) ;
 int utf8_filenames ;
 int * wchar_from_utf8 (char const*) ;

int flac_internal_rename_utf8(const char *oldname, const char *newname)
{
 if (!utf8_filenames) {
  return rename(oldname, newname);
 } else {
  wchar_t *wold = ((void*)0);
  wchar_t *wnew = ((void*)0);
  int ret = -1;

  do {
   if (!(wold = wchar_from_utf8(oldname))) break;
   if (!(wnew = wchar_from_utf8(newname))) break;
   ret = _wrename(wold, wnew);
  } while(0);

  free(wold);
  free(wnew);

  return ret;
 }
}
