
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENAMETOOLONG ;

int
copystr(const void *vfrom, void *vto, size_t maxlen, size_t * lencopied)
{
 size_t l;
 char const *from = (char const *) vfrom;
 char *to = (char *) vto;

 for (l = 0; l < maxlen; l++) {
  if ((*to++ = *from++) == '\0') {
   if (lencopied)
    *lencopied = l + 1;
   return 0;
  }
 }
 if (lencopied)
  *lencopied = maxlen;
 return ENAMETOOLONG;
}
