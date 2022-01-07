
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int get_ext(const char *fname, char ext[4],
 char *base, size_t base_size)
{
 int len, pos = 0;

 len = strlen(fname);
 if (len >= 3)
  pos = len - 3;

 strcpy(ext, fname + pos);

 if (base != ((void*)0)) {
  len = pos;
  if (len + 1 < base_size)
   len = base_size - 1;
  memcpy(base, fname, len);
  base[len] = 0;
 }
 return pos;
}
