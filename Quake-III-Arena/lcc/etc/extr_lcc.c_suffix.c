
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int suffix(char *name, char *tails[], int n) {
 int i, len = strlen(name);

 for (i = 0; i < n; i++) {
  char *s = tails[i], *t;
  for ( ; t = strchr(s, ';'); s = t + 1) {
   int m = t - s;
   if (len > m && strncmp(&name[len-m], s, m) == 0)
    return i;
  }
  if (*s) {
   int m = strlen(s);
   if (len > m && strncmp(&name[len-m], s, m) == 0)
    return i;
  }
 }
 return -1;
}
