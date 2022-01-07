
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func {int dummy; } ;
struct file {char* name; struct file* link; scalar_t__ funcs; scalar_t__ counts; scalar_t__ count; scalar_t__ size; } ;


 int NELEMS (char**) ;
 int NEW (struct file*,int ) ;
 int PERM ;
 int acaller (char*,char*,int,int,int,struct func*) ;
 struct func* afunction (char*,char*,int,int,int) ;
 int apoint (int,char*,int,int,int) ;
 int assert (int) ;
 struct file* filelist ;
 int findfile (char*) ;
 int getd () ;
 char* getstr () ;

__attribute__((used)) static int gather(void) {
 int i, nfiles, nfuncs, npoints;
 char *files[64];

 if ((nfiles = getd()) < 0)
  return 0;
 assert(nfiles < NELEMS(files));
 for (i = 0; i < nfiles; i++) {
  if ((files[i] = getstr()) == 0)
   return -1;
  if (!findfile(files[i])) {
   struct file *new;
   NEW(new, PERM);
   new->name = files[i];
   new->size = new->count = 0;
   new->counts = 0;
   new->funcs = 0;
   new->link = filelist;
   filelist = new;
  }
 }
 if ((nfuncs = getd()) < 0)
  return -1;
 for (i = 0; i < nfuncs; i++) {
  struct func *q;
  char *name, *file;
  int f, x, y, count;
  if ((name = getstr()) == 0 || (f = getd()) <= 0
  || (x = getd()) < 0 || (y = getd()) < 0 || (count = getd()) < 0)
   return -1;
  q = afunction(name, files[f-1], x, y, count);
  if ((name = getstr()) == 0 || (file = getstr()) == 0
  || (x = getd()) < 0 || (y = getd()) < 0)
   return -1;
  if (*name != '?')
   acaller(name, file, x, y, count, q);
 }
 if ((npoints = getd()) < 0)
  return -1;
 for (i = 0; i < npoints; i++) {
  int f, x, y, count;
  if ((f = getd()) < 0 || (x = getd()) < 0 || (y = getd()) < 0
  || (count = getd()) < 0)
   return -1;
  if (f)
   apoint(i, files[f-1], x, y, count);
 }
 return 1;
}
