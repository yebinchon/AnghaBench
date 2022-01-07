
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * List ;


 int * append (int ,int *) ;
 int assert (int) ;
 int find (char*,int *) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int strsave (char*) ;

__attribute__((used)) static List path2list(const char *path) {
 List list = ((void*)0);
 char sep = ':';

 if (path == ((void*)0))
  return ((void*)0);
 if (strchr(path, ';'))
  sep = ';';
 while (*path) {
  char *p, buf[512];
  if (p = strchr(path, sep)) {
   assert(p - path < sizeof buf);
   strncpy(buf, path, p - path);
   buf[p-path] = '\0';
  } else {
   assert(strlen(path) < sizeof buf);
   strcpy(buf, path);
  }
  if (!find(buf, list))
   list = append(strsave(buf), list);
  if (p == 0)
   break;
  path = p + 1;
 }
 return list;
}
