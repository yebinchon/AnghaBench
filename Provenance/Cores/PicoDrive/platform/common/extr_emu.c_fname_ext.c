
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const PATH_SEP_C ;
 int plat_get_root_dir (char*,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void fname_ext(char *dst, int dstlen, const char *prefix, const char *ext, const char *fname)
{
 int prefix_len = 0;
 const char *p;

 *dst = 0;
 if (prefix) {
  int len = plat_get_root_dir(dst, dstlen);
  strcpy(dst + len, prefix);
  prefix_len = len + strlen(prefix);
 }

 p = fname + strlen(fname) - 1;
 for (; p >= fname && *p != PATH_SEP_C; p--)
  ;
 p++;
 strncpy(dst + prefix_len, p, dstlen - prefix_len - 1);

 dst[dstlen - 8] = 0;
 if (dst[strlen(dst) - 4] == '.')
  dst[strlen(dst) - 4] = 0;
 if (ext)
  strcat(dst, ext);
}
