
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append (char*,int ) ;
 int * com ;
 int getpid () ;
 char* replace (char*,char,char) ;
 int rmlist ;
 char* stringf (char*,int ,int ,int ,char*) ;
 int * strstr (int ,char*) ;
 int tempdir ;

char *tempname(char *suffix) {
 static int n;
 char *name = stringf("%s/lcc%d%d%s", tempdir, getpid(), n++, suffix);

 if (strstr(com[1], "win32") != ((void*)0))
  name = replace(name, '/', '\\');
 rmlist = append(name, rmlist);
 return name;
}
